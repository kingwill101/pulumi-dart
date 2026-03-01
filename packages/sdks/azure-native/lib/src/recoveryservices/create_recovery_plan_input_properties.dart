// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_a2_ainput.dart';
import 'recovery_plan_group.dart';

/// Recovery plan creation properties.
class CreateRecoveryPlanInputProperties {
  /// The failover deployment model.
  final String? failoverDeploymentModel;
  /// The recovery plan groups.
  final List<RecoveryPlanGroup> groups;
  /// The primary fabric Id.
  final String primaryFabricId;
  /// The provider specific input.
  final List<RecoveryPlanA2AInput>? providerSpecificInput;
  /// The recovery fabric Id.
  final String recoveryFabricId;

  /// Creates a new [CreateRecoveryPlanInputProperties].
  /// [failoverDeploymentModel] The failover deployment model.
  /// [groups] The recovery plan groups.
  /// [primaryFabricId] The primary fabric Id.
  /// [providerSpecificInput] The provider specific input.
  /// [recoveryFabricId] The recovery fabric Id.
  CreateRecoveryPlanInputProperties({
    this.failoverDeploymentModel,
    required this.groups,
    required this.primaryFabricId,
    this.providerSpecificInput,
    required this.recoveryFabricId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverDeploymentModel': ?failoverDeploymentModel,
      'groups': pulumi.Input.encodeList<RecoveryPlanGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'primaryFabricId': primaryFabricId,
      'providerSpecificInput': ?providerSpecificInput == null ? null : pulumi.Input.encodeList<RecoveryPlanA2AInput, Map<String, dynamic>>(providerSpecificInput!, (value) => value.toMap()),
      'recoveryFabricId': recoveryFabricId,
    };
  }

  factory CreateRecoveryPlanInputProperties.fromMap(Map<String, dynamic> map) {
    return CreateRecoveryPlanInputProperties(
      failoverDeploymentModel: map['failoverDeploymentModel'] == null ? null : map['failoverDeploymentModel'] as String,
      groups: pulumi.Input.decodeList<RecoveryPlanGroup>(map['groups'], (value) => RecoveryPlanGroup.fromMap((value as Map).cast<String, dynamic>())),
      primaryFabricId: map['primaryFabricId'] as String,
      providerSpecificInput: map['providerSpecificInput'] == null ? null : pulumi.Input.decodeList<RecoveryPlanA2AInput>(map['providerSpecificInput'], (value) => RecoveryPlanA2AInput.fromMap((value as Map).cast<String, dynamic>())),
      recoveryFabricId: map['recoveryFabricId'] as String,
    );
  }
}

