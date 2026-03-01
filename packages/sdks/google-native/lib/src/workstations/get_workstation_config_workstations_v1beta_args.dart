// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1beta_get_workstation_config_workstations_v1beta_args_doc}
/// Arguments for getWorkstationConfig.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_get_workstation_config_workstations_v1beta_args_doc}
class GetWorkstationConfigWorkstationsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [GetWorkstationConfigWorkstationsV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  GetWorkstationConfigWorkstationsV1betaArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workstationClusterId,
    required pulumi.Output<String> workstationConfigId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      workstationClusterId = pulumi.Input.asInput<String>(workstationClusterId),
      workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory GetWorkstationConfigWorkstationsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationConfigWorkstationsV1betaArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workstationClusterId: pulumi.Output.create<String>(map['workstationClusterId'] as String),
      workstationConfigId: pulumi.Output.create<String>(map['workstationConfigId'] as String),
    );
  }
}

