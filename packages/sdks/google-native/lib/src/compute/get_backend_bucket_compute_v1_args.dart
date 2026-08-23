// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_backend_bucket_compute_v1_args_doc}
/// Arguments for getBackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_backend_bucket_compute_v1_args_doc}
class GetBackendBucketComputeV1Args {
  final pulumi.Input<String> backendBucket;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendBucketComputeV1Args].
  /// [backendBucket] Required.
  /// [project] Optional.
  const GetBackendBucketComputeV1Args({
    required this.backendBucket,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucket': backendBucket,
      'project': ?project,
    };
  }

  factory GetBackendBucketComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketComputeV1Args(
      backendBucket: pulumi.Input.fromValue(map['backendBucket'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
