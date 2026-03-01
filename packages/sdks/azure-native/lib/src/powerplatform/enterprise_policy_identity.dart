// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// The identity of the EnterprisePolicy.
class EnterprisePolicyIdentity {
  /// The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  final ResourceIdentityType? type;

  /// Creates a new [EnterprisePolicyIdentity].
  /// [type] The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  EnterprisePolicyIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory EnterprisePolicyIdentity.fromMap(Map<String, dynamic> map) {
    return EnterprisePolicyIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
    );
  }
}

