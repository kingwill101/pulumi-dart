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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSqlDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlDatabaseArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

