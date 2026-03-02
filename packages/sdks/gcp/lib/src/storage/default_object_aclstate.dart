// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultObjectACL resources.
class DefaultObjectACLState {
  /// The name of the bucket it applies to.
  final pulumi.Input<String>? bucket;
  /// List of role/entity pairs in the form `ROLE:entity`.
  /// See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Omitting the field is the same as providing an empty list.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [DefaultObjectACLState].
  /// [bucket] The name of the bucket it applies to.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`.
  DefaultObjectACLState({
    this.bucket,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'roleEntities': ?roleEntities,
    };
  }

  factory DefaultObjectACLState.fromMap(Map<String, dynamic> map) {
    return DefaultObjectACLState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      roleEntities: map['roleEntities'] == null ? null : ((map['roleEntities']! as List).cast<String>()).input(),
    );
  }
}

