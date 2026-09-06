// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_replication_policy_properties_metrics.dart';
import 'object_replication_policy_rule.dart';

/// {@template pulumi_storage_object_replication_policy_args_doc}
/// The set of arguments for ObjectReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_object_replication_policy_args_doc}
class ObjectReplicationPolicyArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Required. Destination account name. It should be full resource id if allowCrossTenantReplication set to false.
  final pulumi.Input<String> destinationAccount;
  /// Optional. The object replication policy metrics feature options.
  final pulumi.Input<ObjectReplicationPolicyPropertiesMetrics?>? metrics;
  /// For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.
  final pulumi.Input<String?>? objectReplicationPolicyId;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The storage account object replication rules.
  final pulumi.Input<List<ObjectReplicationPolicyRule>?>? rules;
  /// Required. Source account name. It should be full resource id if allowCrossTenantReplication set to false.
  final pulumi.Input<String> sourceAccount;

  /// Creates a new [ObjectReplicationPolicyArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [destinationAccount] Required. Destination account name. It should be full resource id if allowCrossTenantReplication set to false.
  /// [metrics] Optional. The object replication policy metrics feature options.
  /// [objectReplicationPolicyId] For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [rules] The storage account object replication rules.
  /// [sourceAccount] Required. Source account name. It should be full resource id if allowCrossTenantReplication set to false.
  const ObjectReplicationPolicyArgs({
    required this.accountName,
    required this.destinationAccount,
    this.metrics,
    this.objectReplicationPolicyId,
    required this.resourceGroupName,
    this.rules,
    required this.sourceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'destinationAccount': destinationAccount,
      'metrics': ?pulumi.Input.mapOptionalInputValue<ObjectReplicationPolicyPropertiesMetrics, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'objectReplicationPolicyId': ?objectReplicationPolicyId,
      'resourceGroupName': resourceGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ObjectReplicationPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ObjectReplicationPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceAccount': sourceAccount,
    };
  }

  factory ObjectReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationPolicyArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      destinationAccount: pulumi.Input.fromValue(map['destinationAccount'] as String),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectReplicationPolicyPropertiesMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectReplicationPolicyId: (() { final guardedValue = map['objectReplicationPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectReplicationPolicyRule>(guardedValue, (value) => ObjectReplicationPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceAccount: pulumi.Input.fromValue(map['sourceAccount'] as String),
    );
  }
}
