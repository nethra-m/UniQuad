from neo4j import GraphDatabase
import mysql.connector

# Function to connect to Neo4j
def connect_to_neo4j(uri, user, password):
    return GraphDatabase.driver(uri, auth=(user, password))

# Function to connect to MySQL
def connect_to_mysql(host, user, password, database):
    return mysql.connector.connect(host=host, user=user, password=password, database=database)

# Function to create relationships in Neo4j based on MySQL foreign keys
def create_relationships(neo4j_session, foreign_keys):
    for key in foreign_keys:
        source_table, source_column, target_table, target_column = key
        relation_name = f"REL_{source_table}_{source_column}_{target_table}_{target_column}"
        query = (
            f"MATCH (a:{source_table}), (b:{target_table}) "
            f"WHERE a.{source_column} = b.{target_column} "
            f"CREATE (a)-[:{relation_name}]->(b)"
        )
        neo4j_session.run(query)

# Function to fetch foreign key pairs from MySQL
def get_foreign_keys(mysql_connection):
    cursor = mysql_connection.cursor()
    query = (
        "SELECT table_name AS source_table, column_name AS source_column, "
        "referenced_table_name AS target_table, referenced_column_name AS target_column "
        "FROM information_schema.key_column_usage "
        "WHERE referenced_table_name IS NOT NULL;"
    )
    cursor.execute(query)
    return cursor.fetchall()

# Main function
def main():
    mysql_host = '127.0.0.1'
    mysql_user = 'root'
    mysql_password = 'password'
    mysql_db = 'uniquad'

    # Neo4j Connection Details
    neo4j_uri = 'bolt://localhost:7687'
    neo4j_user = 'neo4j'
    neo4j_password = 'password'

    neo4j_driver = connect_to_neo4j(neo4j_uri, neo4j_user, neo4j_password)
    mysql_connection = connect_to_mysql(mysql_host, mysql_user, mysql_password, mysql_db)

    try:
        neo4j_session = neo4j_driver.session()
        foreign_keys = get_foreign_keys(mysql_connection)
        create_relationships(neo4j_session, foreign_keys)
        print("Relationships created successfully in Neo4j.")
    finally:
        neo4j_session.close()
        mysql_connection.close()

if __name__ == "__main__":
    main()
