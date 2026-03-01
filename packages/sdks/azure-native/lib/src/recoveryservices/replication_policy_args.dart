// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_policy_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_policy_args_doc}
/// The set of arguments for ReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_policy_args_doc}
class ReplicationPolicyArgs {
  /// Replication policy name.
  final pulumi.Input<String>? policyName;
  /// Policy creation properties.
  final pulumi.Input<CreatePolicyInputProperties>? properties;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationPolicyArgs].
  /// [policyName] Replication policy name.
  /// [properties] Policy creation properties.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  ReplicationPolicyArgs({
    pulumi.Output<String>? policyName,
    pulumi.Output<CreatePolicyInputProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      properties = pulumi.Input.asOptionalInput<CreatePolicyInputProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CreatePolicyInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationPolicyArgs(
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CreatePolicyInputProperties>(CreatePolicyInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

