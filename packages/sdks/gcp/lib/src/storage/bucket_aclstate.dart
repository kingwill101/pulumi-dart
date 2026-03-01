// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketACL resources.
class BucketACLState {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  final pulumi.Input<String>? bucket;
  /// Configure this ACL to be the default ACL.
  final pulumi.Input<String>? defaultAcl;
  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `role_entity` is not.
  final pulumi.Input<String>? predefinedAcl;
  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefined_acl` is not.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [BucketACLState].
  /// [bucket] The name of the bucket it applies to.
  /// [defaultAcl] Configure this ACL to be the default ACL.
  /// [predefinedAcl] The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `role_entity` is not.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefined_acl` is not.
  BucketACLState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? defaultAcl,
    pulumi.Output<String>? predefinedAcl,
    pulumi.Output<List<String>>? roleEntities,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      defaultAcl = pulumi.Input.asOptionalInput<String>(defaultAcl),
      predefinedAcl = pulumi.Input.asOptionalInput<String>(predefinedAcl),
      roleEntities = pulumi.Input.asOptionalInput<List<String>>(roleEntities);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'defaultAcl': ?defaultAcl,
      'predefinedAcl': ?predefinedAcl,
      'roleEntities': ?roleEntities,
    };
  }

  factory BucketACLState.fromMap(Map<String, dynamic> map) {
    return BucketACLState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      defaultAcl: map['defaultAcl'] == null ? null : pulumi.Output.create<String>(map['defaultAcl'] as String),
      predefinedAcl: map['predefinedAcl'] == null ? null : pulumi.Output.create<String>(map['predefinedAcl'] as String),
      roleEntities: map['roleEntities'] == null ? null : pulumi.Output.create<List<String>>((map['roleEntities'] as List).cast<String>()),
    );
  }
}

