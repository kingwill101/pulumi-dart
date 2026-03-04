// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1alpha1_get_worker_pool_cloudbuild_v1alpha1_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1alpha1_get_worker_pool_cloudbuild_v1alpha1_args_doc}
class GetWorkerPoolCloudbuildV1alpha1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [GetWorkerPoolCloudbuildV1alpha1Args].
  /// [project] Optional.
  /// [workerPoolId] Required.
  GetWorkerPoolCloudbuildV1alpha1Args({
    this.project,
    required this.workerPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'workerPoolId': workerPoolId};
  }

  factory GetWorkerPoolCloudbuildV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkerPoolCloudbuildV1alpha1Args(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerPoolId: pulumi.Input.fromValue(map['workerPoolId'] as String),
    );
  }
}
