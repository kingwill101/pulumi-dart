// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1beta_get_workstation_cluster_workstation_config_workstation_iam_policy_workstations_v1beta_args_doc}
/// Arguments for getWorkstationClusterWorkstationConfigWorkstationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_get_workstation_cluster_workstation_config_workstation_iam_policy_workstations_v1beta_args_doc}
class GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;
  final pulumi.Input<String> workstationId;

  /// Creates a new [GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  /// [workstationId] Required.
  GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workstationClusterId,
    required pulumi.Output<String> workstationConfigId,
    required pulumi.Output<String> workstationId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      workstationClusterId = pulumi.Input.asInput<String>(workstationClusterId),
      workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId),
      workstationId = pulumi.Input.asInput<String>(workstationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
      'workstationId': workstationId,
    };
  }

  factory GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterWorkstationConfigWorkstationIamPolicyWorkstationsV1betaArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workstationClusterId: pulumi.Output.create<String>(map['workstationClusterId'] as String),
      workstationConfigId: pulumi.Output.create<String>(map['workstationConfigId'] as String),
      workstationId: pulumi.Output.create<String>(map['workstationId'] as String),
    );
  }
}

