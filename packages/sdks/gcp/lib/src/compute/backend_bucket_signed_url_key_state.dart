// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackendBucketSignedUrlKey resources.
class BackendBucketSignedUrlKeyState {
  /// The backend bucket this signed URL key belongs.
  final pulumi.Input<String?>? backendBucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? keyValue;
  /// Name of the signed URL key.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [BackendBucketSignedUrlKeyState].
  /// [backendBucket] The backend bucket this signed URL key belongs.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [keyValue] 128-bit key value used for signing the URL. The key value must be a
  /// [name] Name of the signed URL key.
  /// [project] The ID of the project in which the resource belongs.
  const BackendBucketSignedUrlKeyState({
    this.backendBucket,
    this.deletionPolicy,
    this.keyValue,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendBucket': ?backendBucket,
      'deletionPolicy': ?deletionPolicy,
      'keyValue': ?keyValue,
      'name': ?name,
      'project': ?project,
    };
  }

  factory BackendBucketSignedUrlKeyState.fromMap(Map<String, dynamic> map) {
    return BackendBucketSignedUrlKeyState(
      backendBucket: (() { final guardedValue = map['backendBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyValue: (() { final guardedValue = map['keyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
