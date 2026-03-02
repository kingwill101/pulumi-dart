// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The output configuration of a job step.
class JobStepOutput {
  /// The resource ID of the credential to use to connect to the output destination.
  final pulumi.Input<String>? credential;
  /// The output destination database.
  final pulumi.Input<String> databaseName;
  /// The output destination resource group.
  final pulumi.Input<String>? resourceGroupName;
  /// The output destination schema.
  final pulumi.Input<String>? schemaName;
  /// The output destination server name.
  final pulumi.Input<String> serverName;
  /// The output destination subscription id.
  final pulumi.Input<String>? subscriptionId;
  /// The output destination table.
  final pulumi.Input<String> tableName;
  /// The output destination type.
  final pulumi.Input<String>? type;

  /// Creates a new [JobStepOutput].
  /// [credential] The resource ID of the credential to use to connect to the output destination.
  /// [databaseName] The output destination database.
  /// [resourceGroupName] The output destination resource group.
  /// [schemaName] The output destination schema.
  /// [serverName] The output destination server name.
  /// [subscriptionId] The output destination subscription id.
  /// [tableName] The output destination table.
  /// [type] The output destination type.
  JobStepOutput({
    this.credential,
    required this.databaseName,
    this.resourceGroupName,
    this.schemaName,
    required this.serverName,
    this.subscriptionId,
    required this.tableName,
    this.type,
  });

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

  factory JobStepOutput.fromMap(Map<String, dynamic> map) {
    return JobStepOutput(
      credential: map['credential'] == null ? null : (map['credential'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      schemaName: map['schemaName'] == null ? null : (map['schemaName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tableName: (map['tableName'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

