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
    required this.backendBucket,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucket': backendBucket,
      'project': ?project,
    };
  }

  factory GetBackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketArgs(
      backendBucket: (map['backendBucket'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

