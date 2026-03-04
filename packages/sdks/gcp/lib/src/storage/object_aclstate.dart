// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ObjectACL resources.
class ObjectACLState {
  /// The name of the bucket the object is stored in.
  final pulumi.Input<String>? bucket;

  /// The name of the object to apply the acl to.
  ///
  /// - - -
  final pulumi.Input<String>? object_;

  /// The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  final pulumi.Input<String>? predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Must be set if `predefined_acl` is not.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [ObjectACLState].
  /// [bucket] The name of the bucket the object is stored in.
  /// [object_] The name of the object to apply the acl to.
  /// [predefinedAcl] The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  ObjectACLState({
    this.bucket,
    this.object_,
    this.predefinedAcl,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'object': ?object_,
      'predefinedAcl': ?predefinedAcl,
      'roleEntities': ?roleEntities,
    };
  }

  factory ObjectACLState.fromMap(Map<String, dynamic> map) {
    return ObjectACLState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      object_: (() {
        final guardedValue = map['object'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predefinedAcl: (() {
        final guardedValue = map['predefinedAcl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleEntities: (() {
        final guardedValue = map['roleEntities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
