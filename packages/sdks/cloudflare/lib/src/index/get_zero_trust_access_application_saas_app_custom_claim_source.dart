// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationSaasAppCustomClaimSource {
  /// The name of the IdP claim.
  final pulumi.Input<String> name;
  /// A mapping from IdP ID to claim name.
  final pulumi.Input<Map<String, String>> nameByIdp;

  /// Creates a new [GetZeroTrustAccessApplicationSaasAppCustomClaimSource].
  /// [name] The name of the IdP claim.
  /// [nameByIdp] A mapping from IdP ID to claim name.
  const GetZeroTrustAccessApplicationSaasAppCustomClaimSource({
    required this.name,
    required this.nameByIdp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nameByIdp': nameByIdp,
    };
  }

  factory GetZeroTrustAccessApplicationSaasAppCustomClaimSource.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationSaasAppCustomClaimSource(
      name: pulumi.Input.fromValue(map['name'] as String),
      nameByIdp: pulumi.Input.fromValue((map['nameByIdp'] as Map).cast<String, String>()),
    );
  }
}
