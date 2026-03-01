// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_extended_database_blob_auditing_policy_args_doc}
/// Arguments for getExtendedDatabaseBlobAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_extended_database_blob_auditing_policy_args_doc}
class GetExtendedDatabaseBlobAuditingPolicyArgs {
  /// The name of the blob auditing policy.
  final pulumi.Input<String> blobAuditingPolicyName;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetExtendedDatabaseBlobAuditingPolicyArgs].
  /// [blobAuditingPolicyName] The name of the blob auditing policy.
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetExtendedDatabaseBlobAuditingPolicyArgs({
    required pulumi.Output<String> blobAuditingPolicyName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      blobAuditingPolicyName = pulumi.Input.asInput<String>(blobAuditingPolicyName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobAuditingPolicyName': blobAuditingPolicyName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetExtendedDatabaseBlobAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetExtendedDatabaseBlobAuditingPolicyArgs(
      blobAuditingPolicyName: pulumi.Output.create<String>(map['blobAuditingPolicyName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

