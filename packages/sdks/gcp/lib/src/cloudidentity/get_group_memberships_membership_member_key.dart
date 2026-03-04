// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMembershipsMembershipMemberKey {
  /// The ID of the entity. For Google-managed entities, the id is the email address of an existing
  /// group or user. For external-identity-mapped entities, the id is a string conforming
  /// to the Identity Source's requirements.
  final pulumi.Input<String> id;

  /// The namespace in which the entity exists.
  /// If not populated, the EntityKey represents a Google-managed entity
  /// such as a Google user or a Google Group.
  /// If populated, the EntityKey represents an external-identity-mapped group.
  final pulumi.Input<String> namespace;

  /// Creates a new [GetGroupMembershipsMembershipMemberKey].
  /// [id] The ID of the entity. For Google-managed entities, the id is the email address of an existing
  /// [namespace] The namespace in which the entity exists.
  GetGroupMembershipsMembershipMemberKey({
    required this.id,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'namespace': namespace};
  }

  factory GetGroupMembershipsMembershipMemberKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGroupMembershipsMembershipMemberKey(
      id: pulumi.Input.fromValue(map['id'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
