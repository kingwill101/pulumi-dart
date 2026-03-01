// ignore_for_file: unused_element, unnecessary_cast


/// Describes an Azure Synapse output data source.
class AzureSynapseOutputDataSourceResponse {
  /// The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? database;
  /// The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? password;
  /// The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? server;
  /// The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? table;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Sql/Server/DataWarehouse'.
  final String type;
  /// The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? user;

  /// Creates a new [AzureSynapseOutputDataSourceResponse].
  /// [database] The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [password] The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [server] The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [table] The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [user] The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  AzureSynapseOutputDataSourceResponse({
    this.database,
    this.password,
    this.server,
    this.table,
    required this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'password': ?password,
      'server': ?server,
      'table': ?table,
      'type': type,
      'user': ?user,
    };
  }

  factory AzureSynapseOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureSynapseOutputDataSourceResponse(
      database: map['database'] == null ? null : map['database'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      server: map['server'] == null ? null : map['server'] as String,
      table: map['table'] == null ? null : map['table'] as String,
      type: map['type'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

