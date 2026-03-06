// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// The identity of the EnterprisePolicy.
class EnterprisePolicyIdentity {
  /// The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  final pulumi.Input<ResourceIdentityType>? type;

  /// Creates a new [EnterprisePolicyIdentity].
  /// [type] The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  const EnterprisePolicyIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.wireValue),
    };
  }

  factory EnterprisePolicyIdentity.fromMap(Map<String, dynamic> map) {
    return EnterprisePolicyIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdentityType.fromValue(guardedValue as String)); })(),
    );
  }
}

