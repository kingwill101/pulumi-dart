// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_backend_bucket_args_doc}
/// Arguments for getBackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_backend_bucket_args_doc}
class GetBackendBucketArgs {
  final pulumi.Input<String> backendBucket;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendBucketArgs].
  /// [backendBucket] Required.
  /// [project] Optional.
  GetBackendBucketArgs({
    required pulumi.Output<String> backendBucket,
    pulumi.Output<String>? project,
  }) :
      backendBucket = pulumi.Input.asInput<String>(backendBucket),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucket': backendBucket,
      'project': ?project,
    };
  }

  factory GetBackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketArgs(
      backendBucket: pulumi.Output.create<String>(map['backendBucket'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

