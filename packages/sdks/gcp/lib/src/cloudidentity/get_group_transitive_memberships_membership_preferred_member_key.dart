// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupTransitiveMembershipsMembershipPreferredMemberKey {
  /// The ID of the entity. For Google-managed entities, the id is the email address of an existing
  /// group or user. For external-identity-mapped entities, the id is a string conforming
  /// to the Identity Source's requirements.
  final pulumi.Input<String> id;
  /// The namespace in which the entity exists.
  /// If not populated, the EntityKey represents a Google-managed entity
  /// such as a Google user or a Google Group.
  /// If populated, the EntityKey represents an external-identity-mapped group.
  final pulumi.Input<String> namespace;

  /// Creates a new [GetGroupTransitiveMembershipsMembershipPreferredMemberKey].
  /// [id] The ID of the entity. For Google-managed entities, the id is the email address of an existing
  /// [namespace] The namespace in which the entity exists.
  GetGroupTransitiveMembershipsMembershipPreferredMemberKey({
    required this.id,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespace': namespace,
    };
  }

  factory GetGroupTransitiveMembershipsMembershipPreferredMemberKey.fromMap(Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsMembershipPreferredMemberKey(
      id: (map['id'] as String).input(),
      namespace: (map['namespace'] as String).input(),
    );
  }
}

