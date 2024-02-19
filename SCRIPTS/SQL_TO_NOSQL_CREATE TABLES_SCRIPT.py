import pymysql
from neo4j import GraphDatabase

# MySQL Connection Details
mysql_host = '<your_host_name/ip>'
mysql_user = '<your_user_name>'
mysql_password = '<your_password>'
mysql_db = 'uniquad'

# Neo4j Connection Details
neo4j_uri = 'bolt://localhost:7687'
neo4j_user = '<your_user_name>'
neo4j_password = '<your_password>'

# Create MySQL connection
mysql_connection = pymysql.connect(
    host=mysql_host,
    user=mysql_user,
    password=mysql_password,
    database=mysql_db
)

def convert_row_to_dict(row, column_names):
    return {column_names[i]: str(value) for i, value in enumerate(row)}

def transfer_schema_to_neo4j():
    # Open MySQL cursor
    with mysql_connection.cursor() as cursor:
        # Get list of tables in the schema
        cursor.execute("SHOW TABLES")
        tables = cursor.fetchall()

        # Open Neo4j session
        with GraphDatabase.driver(neo4j_uri, auth=(neo4j_user, neo4j_password)) as neo4j_driver:
            with neo4j_driver.session() as neo4j_session:
                # Iterate over tables and transfer data to Neo4j
                for table in tables:
                    table_name = table[0]
                    query = f"SELECT * FROM {table_name}"
                    cursor.execute(query)
                    result = cursor.fetchall()

                    # Get column names
                    column_names = [desc[0] for desc in cursor.description]

                    # Create nodes for each row in Neo4j
                    for row in result:
                        properties = convert_row_to_dict(row, column_names)
                        neo4j_session.run(
                            f"CREATE (n:{table_name} $properties)",
                            parameters={'properties': properties}
                        )

# Run the transfer function
transfer_schema_to_neo4j()

# Close MySQL connection
mysql_connection.close()
