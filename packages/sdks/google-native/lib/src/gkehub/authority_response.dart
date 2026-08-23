// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authority encodes how Google will recognize identities from this Membership. See the workload identity documentation for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
class AuthorityResponse {
  /// An identity provider that reflects the `issuer` in the workload identity pool.
  final pulumi.Input<String> identityProvider;
  /// Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length &lt;2000 characters, it must use `location` rather than `zone` for GKE clusters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).
  final pulumi.Input<String> issuer;
  /// Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.
  final pulumi.Input<String> oidcJwks;
  /// The name of the workload identity pool in which `issuer` will be recognized. There is a single Workload Identity Pool per Hub that is shared between all Memberships that belong to that Hub. For a Hub hosted in {PROJECT_ID}, the workload pool format is `{PROJECT_ID}.hub.id.goog`, although this is subject to change in newer versions of this API.
  final pulumi.Input<String> workloadIdentityPool;

  /// Creates a new [AuthorityResponse].
  /// [identityProvider] An identity provider that reflects the `issuer` in the workload identity pool.
  /// [issuer] Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length &lt;2000 characters, it must use `location` rather than `zone` for GKE clusters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).
  /// [oidcJwks] Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.
  /// [workloadIdentityPool] The name of the workload identity pool in which `issuer` will be recognized. There is a single Workload Identity Pool per Hub that is shared between all Memberships that belong to that Hub. For a Hub hosted in {PROJECT_ID}, the workload pool format is `{PROJECT_ID}.hub.id.goog`, although this is subject to change in newer versions of this API.
  const AuthorityResponse({
    required this.identityProvider,
    required this.issuer,
    required this.oidcJwks,
    required this.workloadIdentityPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProvider': identityProvider,
      'issuer': issuer,
      'oidcJwks': oidcJwks,
      'workloadIdentityPool': workloadIdentityPool,
    };
  }

  factory AuthorityResponse.fromMap(Map<String, dynamic> map) {
    return AuthorityResponse(
      identityProvider: pulumi.Input.fromValue(map['identityProvider'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      oidcJwks: pulumi.Input.fromValue(map['oidcJwks'] as String),
      workloadIdentityPool: pulumi.Input.fromValue(map['workloadIdentityPool'] as String),
    );
  }
}
