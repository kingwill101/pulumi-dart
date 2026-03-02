// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1_get_workstation_config_args_doc}
/// Arguments for getWorkstationConfig.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_get_workstation_config_args_doc}
class GetWorkstationConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [GetWorkstationConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  GetWorkstationConfigArgs({
    required this.location,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory GetWorkstationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationConfigArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      workstationClusterId: (map['workstationClusterId'] as String).input(),
      workstationConfigId: (map['workstationConfigId'] as String).input(),
    );
  }
}

