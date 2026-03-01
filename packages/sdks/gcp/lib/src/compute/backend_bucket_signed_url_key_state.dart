// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackendBucketSignedUrlKey resources.
class BackendBucketSignedUrlKeyState {
  /// The backend bucket this signed URL key belongs.
  final pulumi.Input<String>? backendBucket;
  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? keyValue;
  /// Name of the signed URL key.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BackendBucketSignedUrlKeyState].
  /// [backendBucket] The backend bucket this signed URL key belongs.
  /// [keyValue] 128-bit key value used for signing the URL. The key value must be a
  /// [name] Name of the signed URL key.
  /// [project] The ID of the project in which the resource belongs.
  BackendBucketSignedUrlKeyState({
    pulumi.Output<String>? backendBucket,
    pulumi.Output<String>? keyValue,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      backendBucket = pulumi.Input.asOptionalInput<String>(backendBucket),
      keyValue = pulumi.Input.asOptionalInput<String>(keyValue),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucket': ?backendBucket,
      'keyValue': ?keyValue,
      'name': ?name,
      'project': ?project,
    };
  }

  factory BackendBucketSignedUrlKeyState.fromMap(Map<String, dynamic> map) {
    return BackendBucketSignedUrlKeyState(
      backendBucket: map['backendBucket'] == null ? null : pulumi.Output.create<String>(map['backendBucket'] as String),
      keyValue: map['keyValue'] == null ? null : pulumi.Output.create<String>(map['keyValue'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

