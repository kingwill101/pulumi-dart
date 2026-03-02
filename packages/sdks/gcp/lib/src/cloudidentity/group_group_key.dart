// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupGroupKey {
  /// The ID of the entity.
  /// For Google-managed entities, the id must be the email address of an existing
  /// group or user.
  /// For external-identity-mapped entities, the id must be a string conforming
  /// to the Identity Source's requirements.
  /// Must be unique within a namespace.
  final pulumi.Input<String> id;
  /// The namespace in which the entity exists.
  /// If not specified, the EntityKey represents a Google-managed entity
  /// such as a Google user or a Google Group.
  /// If specified, the EntityKey represents an external-identity-mapped group.
  /// The namespace must correspond to an identity source created in Admin Console
  /// and must be in the form of `identitysources/{identity_source_id}`.
  final pulumi.Input<String>? namespace;

  /// Creates a new [GroupGroupKey].
  /// [id] The ID of the entity.
  /// [namespace] The namespace in which the entity exists.
  GroupGroupKey({
    required this.id,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespace': ?namespace,
    };
  }

  factory GroupGroupKey.fromMap(Map<String, dynamic> map) {
    return GroupGroupKey(
      id: (map['id'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
    );
  }
}

