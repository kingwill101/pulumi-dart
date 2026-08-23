// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_default_object_acl_default_object_aclargs_doc}
/// The set of arguments for DefaultObjectACL.
/// {@endtemplate}
/// {@macro pulumi_storage_default_object_acl_default_object_aclargs_doc}
class DefaultObjectACLArgs {
  /// The name of the bucket it applies to.
  final pulumi.Input<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// List of role/entity pairs in the form `ROLE:entity`.
  /// See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Omitting the field is the same as providing an empty list.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [DefaultObjectACLArgs].
  /// [bucket] The name of the bucket it applies to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`.
  const DefaultObjectACLArgs({
    required this.bucket,
    this.deletionPolicy,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'deletionPolicy': ?deletionPolicy,
      'roleEntities': ?roleEntities,
    };
  }

  factory DefaultObjectACLArgs.fromMap(Map<String, dynamic> map) {
    return DefaultObjectACLArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleEntities: (() { final guardedValue = map['roleEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
