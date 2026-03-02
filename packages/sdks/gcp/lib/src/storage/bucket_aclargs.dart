// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_bucket_acl_bucket_aclargs_doc}
/// The set of arguments for BucketACL.
/// {@endtemplate}
/// {@macro pulumi_storage_bucket_acl_bucket_aclargs_doc}
class BucketACLArgs {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  final pulumi.Input<String> bucket;
  /// Configure this ACL to be the default ACL.
  final pulumi.Input<String>? defaultAcl;
  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `role_entity` is not.
  final pulumi.Input<String>? predefinedAcl;
  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefined_acl` is not.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [BucketACLArgs].
  /// [bucket] The name of the bucket it applies to.
  /// [defaultAcl] Configure this ACL to be the default ACL.
  /// [predefinedAcl] The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `role_entity` is not.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefined_acl` is not.
  BucketACLArgs({
    required this.bucket,
    this.defaultAcl,
    this.predefinedAcl,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'defaultAcl': ?defaultAcl,
      'predefinedAcl': ?predefinedAcl,
      'roleEntities': ?roleEntities,
    };
  }

  factory BucketACLArgs.fromMap(Map<String, dynamic> map) {
    return BucketACLArgs(
      bucket: (map['bucket'] as String).input(),
      defaultAcl: map['defaultAcl'] == null ? null : (map['defaultAcl'] as String).input(),
      predefinedAcl: map['predefinedAcl'] == null ? null : (map['predefinedAcl'] as String).input(),
      roleEntities: map['roleEntities'] == null ? null : ((map['roleEntities'] as List).cast<String>()).input(),
    );
  }
}

