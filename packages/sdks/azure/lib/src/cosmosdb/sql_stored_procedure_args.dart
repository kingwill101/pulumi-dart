// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_sql_stored_procedure_sql_stored_procedure_args_doc}
/// The set of arguments for SqlStoredProcedure.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_stored_procedure_sql_stored_procedure_args_doc}
class SqlStoredProcedureArgs {
  /// The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// The body of the stored procedure.
  final pulumi.Input<String> body;
  /// The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerName;
  /// The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [SqlStoredProcedureArgs].
  /// [accountName] The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created.
  /// [body] The body of the stored procedure.
  /// [containerName] The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created.
  /// [databaseName] The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  const SqlStoredProcedureArgs({
    required this.accountName,
    required this.body,
    required this.containerName,
    required this.databaseName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'body': body,
      'containerName': containerName,
      'databaseName': databaseName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory SqlStoredProcedureArgs.fromMap(Map<String, dynamic> map) {
    return SqlStoredProcedureArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      body: pulumi.Input.fromValue(map['body'] as String),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
