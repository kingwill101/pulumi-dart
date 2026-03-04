// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_backend_bucket_get_backend_bucket_args_doc}
/// Arguments for getBackendBucket.
/// {@endtemplate}
/// {@macro pulumi_compute_get_backend_bucket_get_backend_bucket_args_doc}
class GetBackendBucketArgs {
  /// Name of the resource.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendBucketArgs].
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs. If it
  GetBackendBucketArgs({required this.name, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'project': ?project};
  }

  factory GetBackendBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
