// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_experiment_args_doc}
/// Arguments for getExperiment.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_experiment_args_doc}
class GetExperimentArgs {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [GetExperimentArgs].
  /// [experimentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [tensorboardId] Required.
  GetExperimentArgs({
    required this.experimentId,
    required this.location,
    this.project,
    required this.tensorboardId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentId': experimentId,
      'location': location,
      'project': ?project,
      'tensorboardId': tensorboardId,
    };
  }

  factory GetExperimentArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs(
      experimentId: (map['experimentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tensorboardId: (map['tensorboardId'] as String).input(),
    );
  }
}

