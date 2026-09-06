// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_policy_properties_response_metrics.dart';
import 'object_replication_policy_rule_response.dart';

/// Result data returned by getObjectReplicationPolicy.
class GetObjectReplicationPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Required. Destination account name. It should be full resource id if allowCrossTenantReplication set to false.
  final String? destinationAccount;
  /// Indicates when the policy is enabled on the source account.
  final String? enabledTime;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Optional. The object replication policy metrics feature options.
  final ObjectReplicationPolicyPropertiesResponseMetrics? metrics;
  /// The name of the resource
  final String? name;
  /// A unique id for object replication policy.
  final String? policyId;
  /// The storage account object replication rules.
  final List<ObjectReplicationPolicyRuleResponse>? rules;
  /// Required. Source account name. It should be full resource id if allowCrossTenantReplication set to false.
  final String? sourceAccount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetObjectReplicationPolicyResult({
    this.azureApiVersion,
    this.destinationAccount,
    this.enabledTime,
    this.id,
    this.metrics,
    this.name,
    this.policyId,
    this.rules,
    this.sourceAccount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'destinationAccount': ?destinationAccount,
      'enabledTime': ?enabledTime,
      'id': ?id,
      'metrics': ?metrics?.toMap(),
      'name': ?name,
      'policyId': ?policyId,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<ObjectReplicationPolicyRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceAccount': ?sourceAccount,
      'type': ?type,
    };
  }

  factory GetObjectReplicationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetObjectReplicationPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationAccount: (() { final guardedValue = map['destinationAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledTime: (() { final guardedValue = map['enabledTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return ObjectReplicationPolicyPropertiesResponseMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ObjectReplicationPolicyRuleResponse>(guardedValue, (value) => ObjectReplicationPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceAccount: (() { final guardedValue = map['sourceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
