// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_backend_bucket_signed_url_key_backend_bucket_signed_url_key_args_doc}
/// The set of arguments for BackendBucketSignedUrlKey.
/// {@endtemplate}
/// {@macro pulumi_compute_backend_bucket_signed_url_key_backend_bucket_signed_url_key_args_doc}
class BackendBucketSignedUrlKeyArgs {
  /// The backend bucket this signed URL key belongs.
  final pulumi.Input<String> backendBucket;
  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> keyValue;
  /// Name of the signed URL key.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackendBucketSignedUrlKeyArgs].
  /// [backendBucket] The backend bucket this signed URL key belongs.
  /// [keyValue] 128-bit key value used for signing the URL. The key value must be a
  /// [name] Name of the signed URL key.
  /// [project] The ID of the project in which the resource belongs.
  const BackendBucketSignedUrlKeyArgs({
    required this.backendBucket,
    required this.keyValue,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucket': backendBucket,
      'keyValue': keyValue,
      'name': ?name,
      'project': ?project,
    };
  }

  factory BackendBucketSignedUrlKeyArgs.fromMap(Map<String, dynamic> map) {
    return BackendBucketSignedUrlKeyArgs(
      backendBucket: pulumi.Input.fromValue(map['backendBucket'] as String),
      keyValue: pulumi.Input.fromValue(map['keyValue'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

