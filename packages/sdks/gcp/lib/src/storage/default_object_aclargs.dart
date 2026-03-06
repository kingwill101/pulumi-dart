// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_default_object_acl_default_object_aclargs_doc}
/// The set of arguments for DefaultObjectACL.
/// {@endtemplate}
/// {@macro pulumi_storage_default_object_acl_default_object_aclargs_doc}
class DefaultObjectACLArgs {
  /// The name of the bucket it applies to.
  final pulumi.Input<String> bucket;
  /// List of role/entity pairs in the form `ROLE:entity`.
  /// See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Omitting the field is the same as providing an empty list.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [DefaultObjectACLArgs].
  /// [bucket] The name of the bucket it applies to.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`.
  const DefaultObjectACLArgs({
    required this.bucket,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'roleEntities': ?roleEntities,
    };
  }

  factory DefaultObjectACLArgs.fromMap(Map<String, dynamic> map) {
    return DefaultObjectACLArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      roleEntities: (() { final guardedValue = map['roleEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

