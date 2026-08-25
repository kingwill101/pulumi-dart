// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketACL resources.
class BucketACLState {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  final pulumi.Input<String?>? bucket;
  /// Configure this ACL to be the default ACL.
  final pulumi.Input<String?>? defaultAcl;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `roleEntity` is not.
  final pulumi.Input<String?>? predefinedAcl;
  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefinedAcl` is not.
  final pulumi.Input<List<String>?>? roleEntities;

  /// Creates a new [BucketACLState].
  /// [bucket] The name of the bucket it applies to.
  /// [defaultAcl] Configure this ACL to be the default ACL.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [predefinedAcl] The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `roleEntity` is not.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefinedAcl` is not.
  const BucketACLState({
    this.bucket,
    this.defaultAcl,
    this.deletionPolicy,
    this.predefinedAcl,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'defaultAcl': ?defaultAcl,
      'deletionPolicy': ?deletionPolicy,
      'predefinedAcl': ?predefinedAcl,
      'roleEntities': ?roleEntities,
    };
  }

  factory BucketACLState.fromMap(Map<String, dynamic> map) {
    return BucketACLState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAcl: (() { final guardedValue = map['defaultAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predefinedAcl: (() { final guardedValue = map['predefinedAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleEntities: (() { final guardedValue = map['roleEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
