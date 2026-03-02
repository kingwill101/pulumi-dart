// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_policy_properties_response_metrics.dart';
import 'object_replication_policy_rule_response.dart';

/// Result data returned by getObjectReplicationPolicy.
class GetObjectReplicationPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Required. Destination account name. It should be full resource id if allowCrossTenantReplication set to false.
  final String destinationAccount;
  /// Indicates when the policy is enabled on the source account.
  final String enabledTime;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Optional. The object replication policy metrics feature options.
  final ObjectReplicationPolicyPropertiesResponseMetrics? metrics;
  /// The name of the resource
  final String name;
  /// A unique id for object replication policy.
  final String policyId;
  /// The storage account object replication rules.
  final List<ObjectReplicationPolicyRuleResponse>? rules;
  /// Required. Source account name. It should be full resource id if allowCrossTenantReplication set to false.
  final String sourceAccount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetObjectReplicationPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [destinationAccount] Required. Destination account name. It should be full resource id if allowCrossTenantReplication set to false.
  /// [enabledTime] Indicates when the policy is enabled on the source account.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [metrics] Optional. The object replication policy metrics feature options.
  /// [name] The name of the resource
  /// [policyId] A unique id for object replication policy.
  /// [rules] The storage account object replication rules.
  /// [sourceAccount] Required. Source account name. It should be full resource id if allowCrossTenantReplication set to false.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetObjectReplicationPolicyResult({
    required this.azureApiVersion,
    required this.destinationAccount,
    required this.enabledTime,
    required this.id,
    this.metrics,
    required this.name,
    required this.policyId,
    this.rules,
    required this.sourceAccount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'destinationAccount': destinationAccount,
      'enabledTime': enabledTime,
      'id': id,
      'metrics': ?metrics == null ? null : metrics!.toMap(),
      'name': name,
      'policyId': policyId,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ObjectReplicationPolicyRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'sourceAccount': sourceAccount,
      'type': type,
    };
  }

  factory GetObjectReplicationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetObjectReplicationPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      destinationAccount: map['destinationAccount'] as String,
      enabledTime: map['enabledTime'] as String,
      id: map['id'] as String,
      metrics: map['metrics'] == null ? null : ObjectReplicationPolicyPropertiesResponseMetrics.fromMap((map['metrics']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      policyId: map['policyId'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ObjectReplicationPolicyRuleResponse>(map['rules']!, (value) => ObjectReplicationPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceAccount: map['sourceAccount'] as String,
      type: map['type'] as String,
    );
  }
}

