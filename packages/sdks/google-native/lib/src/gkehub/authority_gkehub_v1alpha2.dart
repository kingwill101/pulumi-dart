// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authority encodes how Google will recognize identities from this Membership. See the workload identity documentation for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
class AuthorityGkehubV1alpha2 {
  /// Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length &lt;2000 characters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer, unless `oidc_jwks` is set. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).
  final pulumi.Input<String>? issuer;

  /// Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.
  final pulumi.Input<String>? oidcJwks;

  /// Creates a new [AuthorityGkehubV1alpha2].
  /// [issuer] Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length &lt;2000 characters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer, unless `oidc_jwks` is set. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).
  /// [oidcJwks] Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.
  AuthorityGkehubV1alpha2({this.issuer, this.oidcJwks});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'issuer': ?issuer, 'oidcJwks': ?oidcJwks};
  }

  factory AuthorityGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return AuthorityGkehubV1alpha2(
      issuer: (() {
        final guardedValue = map['issuer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oidcJwks: (() {
        final guardedValue = map['oidcJwks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
