// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_worker_pool_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_worker_pool_args_doc}
class GetWorkerPoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [GetWorkerPoolArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [workerPoolId] Required.
  GetWorkerPoolArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workerPoolId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      workerPoolId = pulumi.Input.asInput<String>(workerPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'workerPoolId': workerPoolId,
    };
  }

  factory GetWorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workerPoolId: pulumi.Output.create<String>(map['workerPoolId'] as String),
    );
  }
}

