// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_policy_principal_binding.dart';
import 'origin_authentication_method.dart';
import 'peer_authentication_method.dart';
import 'tls_context.dart';

/// [Deprecated] The authentication settings for the backend service. The authentication settings for the backend service.
class AuthenticationPolicy {
  /// List of authentication methods that can be used for origin authentication. Similar to peers, these will be evaluated in order the first valid one will be used to set origin identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if origin authentication is not required.
  final pulumi.Input<List<OriginAuthenticationMethod>>? origins;
  /// List of authentication methods that can be used for peer authentication. They will be evaluated in order the first valid one will be used to set peer identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if peer authentication is not required.
  final pulumi.Input<List<PeerAuthenticationMethod>>? peers;
  /// Define whether peer or origin identity should be used for principal. Default value is USE_PEER. If peer (or origin) identity is not available, either because peer/origin authentication is not defined, or failed, principal will be left unset. In other words, binding rule does not affect the decision to accept or reject request. This field can be set to one of the following: USE_PEER: Principal will be set to the identity from peer authentication. USE_ORIGIN: Principal will be set to the identity from origin authentication.
  final pulumi.Input<AuthenticationPolicyPrincipalBinding>? principalBinding;
  /// Configures the mechanism to obtain server-side security certificates and identity information.
  final pulumi.Input<TlsContext>? serverTlsContext;

  /// Creates a new [AuthenticationPolicy].
  /// [origins] List of authentication methods that can be used for origin authentication. Similar to peers, these will be evaluated in order the first valid one will be used to set origin identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if origin authentication is not required.
  /// [peers] List of authentication methods that can be used for peer authentication. They will be evaluated in order the first valid one will be used to set peer identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if peer authentication is not required.
  /// [principalBinding] Define whether peer or origin identity should be used for principal. Default value is USE_PEER. If peer (or origin) identity is not available, either because peer/origin authentication is not defined, or failed, principal will be left unset. In other words, binding rule does not affect the decision to accept or reject request. This field can be set to one of the following: USE_PEER: Principal will be set to the identity from peer authentication. USE_ORIGIN: Principal will be set to the identity from origin authentication.
  /// [serverTlsContext] Configures the mechanism to obtain server-side security certificates and identity information.
  const AuthenticationPolicy({
    this.origins,
    this.peers,
    this.principalBinding,
    this.serverTlsContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origins': ?pulumi.Input.mapOptionalInputValue<List<OriginAuthenticationMethod>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<OriginAuthenticationMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peers': ?pulumi.Input.mapOptionalInputValue<List<PeerAuthenticationMethod>, List<Map<String, dynamic>>>(peers, (value) => pulumi.Input.encodeList<PeerAuthenticationMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principalBinding': ?pulumi.Input.mapOptionalInputValue<AuthenticationPolicyPrincipalBinding, String>(principalBinding, (value) => value.wireValue),
      'serverTlsContext': ?pulumi.Input.mapOptionalInputValue<TlsContext, Map<String, dynamic>>(serverTlsContext, (value) => value.toMap()),
    };
  }

  factory AuthenticationPolicy.fromMap(Map<String, dynamic> map) {
    return AuthenticationPolicy(
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OriginAuthenticationMethod>(guardedValue, (value) => OriginAuthenticationMethod.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peers: (() { final guardedValue = map['peers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PeerAuthenticationMethod>(guardedValue, (value) => PeerAuthenticationMethod.fromMap((value as Map).cast<String, dynamic>()))); })(),
      principalBinding: (() { final guardedValue = map['principalBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationPolicyPrincipalBinding.fromValue(guardedValue as String)); })(),
      serverTlsContext: (() { final guardedValue = map['serverTlsContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
