// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_extended_server_blob_auditing_policy_args_doc}
/// Arguments for getExtendedServerBlobAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_extended_server_blob_auditing_policy_args_doc}
class GetExtendedServerBlobAuditingPolicyArgs {
  /// The name of the blob auditing policy.
  final pulumi.Input<String> blobAuditingPolicyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetExtendedServerBlobAuditingPolicyArgs].
  /// [blobAuditingPolicyName] The name of the blob auditing policy.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const GetExtendedServerBlobAuditingPolicyArgs({
    required this.blobAuditingPolicyName,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobAuditingPolicyName': blobAuditingPolicyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetExtendedServerBlobAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetExtendedServerBlobAuditingPolicyArgs(
      blobAuditingPolicyName: pulumi.Input.fromValue(map['blobAuditingPolicyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}

