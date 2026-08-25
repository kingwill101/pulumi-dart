// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_object_acl_object_aclargs_doc}
/// The set of arguments for ObjectACL.
/// {@endtemplate}
/// {@macro pulumi_storage_object_acl_object_aclargs_doc}
class ObjectACLArgs {
  /// The name of the bucket the object is stored in.
  final pulumi.Input<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the object to apply the acl to.
  ///
  /// - - -
  final pulumi.Input<String> object_;
  /// The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `roleEntity` is not.
  final pulumi.Input<String?>? predefinedAcl;
  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Must be set if `predefinedAcl` is not.
  ///
  /// &gt; The object's creator will always have `OWNER` permissions for their object, and any attempt to modify that permission would return an error. Instead, Terraform automatically
  /// adds that role/entity pair to your `pulumi preview` results when it is omitted in your config; `pulumi preview` will show the correct final state at every point except for at
  /// `Create` time, where the object role/entity pair is omitted if not explicitly set.
  final pulumi.Input<List<String>?>? roleEntities;

  /// Creates a new [ObjectACLArgs].
  /// [bucket] The name of the bucket the object is stored in.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [object_] The name of the object to apply the acl to.
  /// [predefinedAcl] The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `roleEntity` is not.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  const ObjectACLArgs({
    required this.bucket,
    this.deletionPolicy,
    required this.object_,
    this.predefinedAcl,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'deletionPolicy': ?deletionPolicy,
      'object': object_,
      'predefinedAcl': ?predefinedAcl,
      'roleEntities': ?roleEntities,
    };
  }

  factory ObjectACLArgs.fromMap(Map<String, dynamic> map) {
    return ObjectACLArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
      predefinedAcl: (() { final guardedValue = map['predefinedAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleEntities: (() { final guardedValue = map['roleEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
