// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The output configuration of a job step.
class JobStepOutputResponse {
  /// The resource ID of the credential to use to connect to the output destination.
  final pulumi.Input<String?>? credential;
  /// The output destination database.
  final pulumi.Input<String> databaseName;
  /// The output destination resource group.
  final pulumi.Input<String?>? resourceGroupName;
  /// The output destination schema.
  final pulumi.Input<String?>? schemaName;
  /// The output destination server name.
  final pulumi.Input<String> serverName;
  /// The output destination subscription id.
  final pulumi.Input<String?>? subscriptionId;
  /// The output destination table.
  final pulumi.Input<String> tableName;
  /// The output destination type.
  final pulumi.Input<String?>? type;

  /// Creates a new [JobStepOutputResponse].
  /// [credential] The resource ID of the credential to use to connect to the output destination.
  /// [databaseName] The output destination database.
  /// [resourceGroupName] The output destination resource group.
  /// [schemaName] The output destination schema.
  /// [serverName] The output destination server name.
  /// [subscriptionId] The output destination subscription id.
  /// [tableName] The output destination table.
  /// [type] The output destination type.
  JobStepOutputResponse({
    this.credential,
    required this.databaseName,
    this.resourceGroupName,
    pulumi.Input<String?>? schemaName,
    required this.serverName,
    this.subscriptionId,
    required this.tableName,
    pulumi.Input<String?>? type,
  }) : schemaName = schemaName ?? pulumi.Input.fromValue('dbo'), type = type ?? pulumi.Input.fromValue('SqlDatabase');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': ?credential,
      'databaseName': databaseName,
      'resourceGroupName': ?resourceGroupName,
      'schemaName': ?schemaName,
      'serverName': serverName,
      'subscriptionId': ?subscriptionId,
      'tableName': tableName,
      'type': ?type,
    };
  }

  factory JobStepOutputResponse.fromMap(Map<String, dynamic> map) {
    return JobStepOutputResponse(
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
