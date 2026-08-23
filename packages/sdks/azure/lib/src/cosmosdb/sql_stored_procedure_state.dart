// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SqlStoredProcedure resources.
class SqlStoredProcedureState {
  /// The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// The body of the stored procedure.
  final pulumi.Input<String>? body;
  /// The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerName;
  /// The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [SqlStoredProcedureState].
  /// [accountName] The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created.
  /// [body] The body of the stored procedure.
  /// [containerName] The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created.
  /// [databaseName] The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created.
  const SqlStoredProcedureState({
    this.accountName,
    this.body,
    this.containerName,
    this.databaseName,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'body': ?body,
      'containerName': ?containerName,
      'databaseName': ?databaseName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory SqlStoredProcedureState.fromMap(Map<String, dynamic> map) {
    return SqlStoredProcedureState(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
