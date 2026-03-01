// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1_get_workstation_args_doc}
/// Arguments for getWorkstation.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_get_workstation_args_doc}
class GetWorkstationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;
  final pulumi.Input<String> workstationId;

  /// Creates a new [GetWorkstationArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  /// [workstationId] Required.
  GetWorkstationArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workstationClusterId,
    required pulumi.Output<String> workstationConfigId,
    required pulumi.Output<String> workstationId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      workstationClusterId = pulumi.Input.asInput<String>(workstationClusterId),
      workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId),
      workstationId = pulumi.Input.asInput<String>(workstationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
      'workstationId': workstationId,
    };
  }

  factory GetWorkstationArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workstationClusterId: pulumi.Output.create<String>(map['workstationClusterId'] as String),
      workstationConfigId: pulumi.Output.create<String>(map['workstationConfigId'] as String),
      workstationId: pulumi.Output.create<String>(map['workstationId'] as String),
    );
  }
}

