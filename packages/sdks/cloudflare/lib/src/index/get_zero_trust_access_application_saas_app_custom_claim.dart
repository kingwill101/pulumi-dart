// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_saas_app_custom_claim_source.dart';

class GetZeroTrustAccessApplicationSaasAppCustomClaim {
  /// The name of the claim.
  final pulumi.Input<String> name;
  /// If the claim is required when building an OIDC token.
  final pulumi.Input<bool> required;
  /// The scope of the claim.
  /// Available values: "groups", "profile", "email", "openid".
  final pulumi.Input<String> scope;
  final pulumi.Input<GetZeroTrustAccessApplicationSaasAppCustomClaimSource> source;

  /// Creates a new [GetZeroTrustAccessApplicationSaasAppCustomClaim].
  /// [name] The name of the claim.
  /// [required] If the claim is required when building an OIDC token.
  /// [scope] The scope of the claim.
  /// [source] Required.
  const GetZeroTrustAccessApplicationSaasAppCustomClaim({
    required this.name,
    required this.required,
    required this.scope,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'required': required,
      'scope': scope,
      'source': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationSaasAppCustomClaimSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationSaasAppCustomClaim.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationSaasAppCustomClaim(
      name: pulumi.Input.fromValue(map['name'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      source: pulumi.Input.fromValue(GetZeroTrustAccessApplicationSaasAppCustomClaimSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
