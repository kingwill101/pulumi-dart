// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A unique identifier for an entity in the Cloud Identity Groups API. An entity can represent either a group with an optional `namespace` or a user without a `namespace`. The combination of `id` and `namespace` must be unique; however, the same `id` can be used with different `namespace`s.
class EntityKeyResponseCloudidentityV1beta1 {
  /// The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/{identity_source_id}`.
  final pulumi.Input<String> namespace;

  /// Creates a new [EntityKeyResponseCloudidentityV1beta1].
  /// [namespace] The namespace in which the entity exists. If not specified, the `EntityKey` represents a Google-managed entity such as a Google user or a Google Group. If specified, the `EntityKey` represents an external-identity-mapped group. The namespace must correspond to an identity source created in Admin Console and must be in the form of `identitysources/{identity_source_id}`.
  EntityKeyResponseCloudidentityV1beta1({required this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace};
  }

  factory EntityKeyResponseCloudidentityV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return EntityKeyResponseCloudidentityV1beta1(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
