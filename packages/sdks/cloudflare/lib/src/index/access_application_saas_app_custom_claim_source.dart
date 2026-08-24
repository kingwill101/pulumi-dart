// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationSaasAppCustomClaimSource {
  /// The name of the IdP claim.
  final pulumi.Input<String?>? name;
  /// A mapping from IdP ID to claim name.
  final pulumi.Input<Map<String, String>?>? nameByIdp;

  /// Creates a new [AccessApplicationSaasAppCustomClaimSource].
  /// [name] The name of the IdP claim.
  /// [nameByIdp] A mapping from IdP ID to claim name.
  const AccessApplicationSaasAppCustomClaimSource({
    this.name,
    this.nameByIdp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nameByIdp': ?nameByIdp,
    };
  }

  factory AccessApplicationSaasAppCustomClaimSource.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasAppCustomClaimSource(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameByIdp: (() { final guardedValue = map['nameByIdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
