// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1beta_get_workstation_cluster_workstations_v1beta_args_doc}
/// Arguments for getWorkstationCluster.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_get_workstation_cluster_workstations_v1beta_args_doc}
class GetWorkstationClusterWorkstationsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;

  /// Creates a new [GetWorkstationClusterWorkstationsV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  GetWorkstationClusterWorkstationsV1betaArgs({
    required this.location,
    this.project,
    required this.workstationClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
    };
  }

  factory GetWorkstationClusterWorkstationsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterWorkstationsV1betaArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      workstationClusterId: (map['workstationClusterId'] as String).input(),
    );
  }
}

