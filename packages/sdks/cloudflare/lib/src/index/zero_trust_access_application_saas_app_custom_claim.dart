// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_saas_app_custom_claim_source.dart';

class ZeroTrustAccessApplicationSaasAppCustomClaim {
  /// The name of the claim.
  final pulumi.Input<String?>? name;
  /// If the claim is required when building an OIDC token.
  final pulumi.Input<bool?>? required;
  /// The scope of the claim.
  /// Available values: "groups", "profile", "email", "openid".
  final pulumi.Input<String?>? scope;
  final pulumi.Input<ZeroTrustAccessApplicationSaasAppCustomClaimSource?>? source;

  /// Creates a new [ZeroTrustAccessApplicationSaasAppCustomClaim].
  /// [name] The name of the claim.
  /// [required] If the claim is required when building an OIDC token.
  /// [scope] The scope of the claim.
  /// [source] Optional.
  const ZeroTrustAccessApplicationSaasAppCustomClaim({
    this.name,
    this.required,
    this.scope,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'required': ?required,
      'scope': ?scope,
      'source': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationSaasAppCustomClaimSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessApplicationSaasAppCustomClaim.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationSaasAppCustomClaim(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationSaasAppCustomClaimSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
