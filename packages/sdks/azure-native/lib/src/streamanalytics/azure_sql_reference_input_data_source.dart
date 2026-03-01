// ignore_for_file: unused_element, unnecessary_cast


/// Describes an Azure SQL database reference input data source.
class AzureSqlReferenceInputDataSource {
  /// This element is associated with the datasource element. This is the name of the database that output will be written to.
  final String? database;
  /// This element is associated with the datasource element. This query is used to fetch incremental changes from the SQL database. To use this option, we recommend using temporal tables in Azure SQL Database.
  final String? deltaSnapshotQuery;
  /// This element is associated with the datasource element. This query is used to fetch data from the sql database.
  final String? fullSnapshotQuery;
  /// This element is associated with the datasource element. This is the password that will be used to connect to the SQL Database instance.
  final String? password;
  /// This element is associated with the datasource element. This indicates how frequently the data will be fetched from the database. It is of DateTime format.
  final String? refreshRate;
  /// Indicates the type of data refresh option.
  final String? refreshType;
  /// This element is associated with the datasource element. This is the name of the server that contains the database that will be written to.
  final String? server;
  /// This element is associated with the datasource element. The name of the table in the Azure SQL database..
  final String? table;
  /// Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Sql/Server/Database'.
  final String type;
  /// This element is associated with the datasource element. This is the user name that will be used to connect to the SQL Database instance.
  final String? user;

  /// Creates a new [AzureSqlReferenceInputDataSource].
  /// [database] This element is associated with the datasource element. This is the name of the database that output will be written to.
  /// [deltaSnapshotQuery] This element is associated with the datasource element. This query is used to fetch incremental changes from the SQL database. To use this option, we recommend using temporal tables in Azure SQL Database.
  /// [fullSnapshotQuery] This element is associated with the datasource element. This query is used to fetch data from the sql database.
  /// [password] This element is associated with the datasource element. This is the password that will be used to connect to the SQL Database instance.
  /// [refreshRate] This element is associated with the datasource element. This indicates how frequently the data will be fetched from the database. It is of DateTime format.
  /// [refreshType] Indicates the type of data refresh option.
  /// [server] This element is associated with the datasource element. This is the name of the server that contains the database that will be written to.
  /// [table] This element is associated with the datasource element. The name of the table in the Azure SQL database..
  /// [type] Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  /// [user] This element is associated with the datasource element. This is the user name that will be used to connect to the SQL Database instance.
  AzureSqlReferenceInputDataSource({
    this.database,
    this.deltaSnapshotQuery,
    this.fullSnapshotQuery,
    this.password,
    this.refreshRate,
    this.refreshType,
    this.server,
    this.table,
    required this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'deltaSnapshotQuery': ?deltaSnapshotQuery,
      'fullSnapshotQuery': ?fullSnapshotQuery,
      'password': ?password,
      'refreshRate': ?refreshRate,
      'refreshType': ?refreshType,
      'server': ?server,
      'table': ?table,
      'type': type,
      'user': ?user,
    };
  }

  factory AzureSqlReferenceInputDataSource.fromMap(Map<String, dynamic> map) {
    return AzureSqlReferenceInputDataSource(
      database: map['database'] == null ? null : map['database'] as String,
      deltaSnapshotQuery: map['deltaSnapshotQuery'] == null ? null : map['deltaSnapshotQuery'] as String,
      fullSnapshotQuery: map['fullSnapshotQuery'] == null ? null : map['fullSnapshotQuery'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      refreshRate: map['refreshRate'] == null ? null : map['refreshRate'] as String,
      refreshType: map['refreshType'] == null ? null : map['refreshType'] as String,
      server: map['server'] == null ? null : map['server'] as String,
      table: map['table'] == null ? null : map['table'] as String,
      type: map['type'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

