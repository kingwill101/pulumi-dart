// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ObjectACL resources.
class ObjectACLState {
  /// The name of the bucket the object is stored in.
  final pulumi.Input<String>? bucket;
  /// The name of the object to apply the acl to.
  ///
  /// - - -
  final pulumi.Input<String>? object;
  /// The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  final pulumi.Input<String>? predefinedAcl;
  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Must be set if `predefined_acl` is not.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [ObjectACLState].
  /// [bucket] The name of the bucket the object is stored in.
  /// [object] The name of the object to apply the acl to.
  /// [predefinedAcl] The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  ObjectACLState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? object,
    pulumi.Output<String>? predefinedAcl,
    pulumi.Output<List<String>>? roleEntities,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      object = pulumi.Input.asOptionalInput<String>(object),
      predefinedAcl = pulumi.Input.asOptionalInput<String>(predefinedAcl),
      roleEntities = pulumi.Input.asOptionalInput<List<String>>(roleEntities);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'object': ?object,
      'predefinedAcl': ?predefinedAcl,
      'roleEntities': ?roleEntities,
    };
  }

  factory ObjectACLState.fromMap(Map<String, dynamic> map) {
    return ObjectACLState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      object: map['object'] == null ? null : pulumi.Output.create<String>(map['object'] as String),
      predefinedAcl: map['predefinedAcl'] == null ? null : pulumi.Output.create<String>(map['predefinedAcl'] as String),
      roleEntities: map['roleEntities'] == null ? null : pulumi.Output.create<List<String>>((map['roleEntities'] as List).cast<String>()),
    );
  }
}

