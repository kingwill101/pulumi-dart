// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_saas_app_custom_claim_source.dart';

class AccessApplicationSaasAppCustomClaim {
  /// The name of the claim.
  final pulumi.Input<String?>? name;
  /// If the claim is required when building an OIDC token.
  final pulumi.Input<bool?>? required;
  /// The scope of the claim.
  /// Available values: "groups", "profile", "email", "openid".
  final pulumi.Input<String?>? scope;
  final pulumi.Input<AccessApplicationSaasAppCustomClaimSource?>? source;

  /// Creates a new [AccessApplicationSaasAppCustomClaim].
  /// [name] The name of the claim.
  /// [required] If the claim is required when building an OIDC token.
  /// [scope] The scope of the claim.
  /// [source] Optional.
  const AccessApplicationSaasAppCustomClaim({
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
      'source': ?pulumi.Input.mapOptionalInputValue<AccessApplicationSaasAppCustomClaimSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AccessApplicationSaasAppCustomClaim.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasAppCustomClaim(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationSaasAppCustomClaimSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
