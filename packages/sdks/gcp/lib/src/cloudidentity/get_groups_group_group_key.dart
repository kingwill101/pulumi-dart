// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroupGroupKey {
  /// The ID of the entity.
  /// For Google-managed entities, the id is the email address of an existing group or user.
  /// For external-identity-mapped entities, the id is a string conforming
  /// to the Identity Source's requirements.
  final pulumi.Input<String> id;
  /// The namespace in which the entity exists.
  /// If not populated, the EntityKey represents a Google-managed entity
  /// such as a Google user or a Google Group.
  /// If populated, the EntityKey represents an external-identity-mapped group.
  /// The namespace must correspond to an identity source created in Admin Console
  /// and must be in the form of `identitysources/{identity_source_id}`.
  final pulumi.Input<String> namespace;

  /// Creates a new [GetGroupsGroupGroupKey].
  /// [id] The ID of the entity.
  /// [namespace] The namespace in which the entity exists.
  GetGroupsGroupGroupKey({
    required this.id,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespace': namespace,
    };
  }

  factory GetGroupsGroupGroupKey.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroupGroupKey(
      id: (map['id'] as String).input(),
      namespace: (map['namespace'] as String).input(),
    );
  }
}

