// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_sql_database_get_sql_database_args_doc}
/// Arguments for getSqlDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_sql_database_get_sql_database_args_doc}
class GetSqlDatabaseArgs {
  /// The name of the Cosmos DB SQL Database to create the table within.
  final pulumi.Input<String> accountName;
  /// Specifies the name of the Cosmos DB SQL Database.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the Cosmos DB SQL Database is created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSqlDatabaseArgs].
  /// [accountName] The name of the Cosmos DB SQL Database to create the table within.
  /// [name] Specifies the name of the Cosmos DB SQL Database.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB SQL Database is created.
  GetSqlDatabaseArgs({
    required this.accountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSqlDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlDatabaseArgs(
      accountName: (map['accountName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

