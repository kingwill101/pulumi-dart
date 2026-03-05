// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupLookupGroupKey {
  /// (Required) The ID of the entity.
  /// For Google-managed entities, the id is the email address of an existing group or user.
  /// For external-identity-mapped entities, the id is a string conforming
  /// to the Identity Source's requirements.
  final pulumi.Input<String> id;
  /// (Optional) The namespace in which the entity exists.
  /// If not populated, the EntityKey represents a Google-managed entity
  /// such as a Google user or a Google Group.
  /// If populated, the EntityKey represents an external-identity-mapped group.
  /// The namespace must correspond to an identity source created in Admin Console
  /// and must be in the form of `identitysources/{identity_source_id}`.
  final pulumi.Input<String>? namespace;

  /// Creates a new [GetGroupLookupGroupKey].
  /// [id] (Required) The ID of the entity.
  /// [namespace] (Optional) The namespace in which the entity exists.
  GetGroupLookupGroupKey({
    required this.id,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespace': ?namespace,
    };
  }

  factory GetGroupLookupGroupKey.fromMap(Map<String, dynamic> map) {
    return GetGroupLookupGroupKey(
      id: pulumi.Input.fromValue(map['id'] as String),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

