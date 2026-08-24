// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationSaasAppCustomClaimSource {
  /// The name of the IdP claim.
  final pulumi.Input<String?>? name;
  /// A mapping from IdP ID to claim name.
  final pulumi.Input<Map<String, String>?>? nameByIdp;

  /// Creates a new [ZeroTrustAccessApplicationSaasAppCustomClaimSource].
  /// [name] The name of the IdP claim.
  /// [nameByIdp] A mapping from IdP ID to claim name.
  const ZeroTrustAccessApplicationSaasAppCustomClaimSource({
    this.name,
    this.nameByIdp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nameByIdp': ?nameByIdp,
    };
  }

  factory ZeroTrustAccessApplicationSaasAppCustomClaimSource.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationSaasAppCustomClaimSource(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameByIdp: (() { final guardedValue = map['nameByIdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
