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
    this.policyName,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

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
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreatePolicyInputProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

