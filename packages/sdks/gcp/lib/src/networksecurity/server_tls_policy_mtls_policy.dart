// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_tls_policy_mtls_policy_client_validation_ca.dart';

class ServerTlsPolicyMtlsPolicy {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty.
  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  /// Structure is documented below.
  final pulumi.Input<List<ServerTlsPolicyMtlsPolicyClientValidationCa>>? clientValidationCas;
  /// When the client presents an invalid certificate or no certificate to the load balancer, the clientValidationMode specifies how the client connection is handled.
  /// Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  /// Possible values are: `CLIENT_VALIDATION_MODE_UNSPECIFIED`, `ALLOW_INVALID_OR_MISSING_CLIENT_CERT`, `REJECT_INVALID`.
  final pulumi.Input<String>? clientValidationMode;
  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace.
  /// If specified, the chain validation will be performed against certificates configured in the given TrustConfig.
  /// Allowed only if the policy is to be used with external HTTPS load balancers.
  final pulumi.Input<String>? clientValidationTrustConfig;

  /// Creates a new [ServerTlsPolicyMtlsPolicy].
  /// [clientValidationCas] Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty.
  /// [clientValidationMode] When the client presents an invalid certificate or no certificate to the load balancer, the clientValidationMode specifies how the client connection is handled.
  /// [clientValidationTrustConfig] Reference to the TrustConfig from certificatemanager.googleapis.com namespace.
  ServerTlsPolicyMtlsPolicy({
    this.clientValidationCas,
    this.clientValidationMode,
    this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientValidationCas': ?pulumi.Input.mapOptionalInputValue<List<ServerTlsPolicyMtlsPolicyClientValidationCa>, List<Map<String, dynamic>>>(clientValidationCas, (value) => pulumi.Input.encodeList<ServerTlsPolicyMtlsPolicyClientValidationCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientValidationMode': ?clientValidationMode,
      'clientValidationTrustConfig': ?clientValidationTrustConfig,
    };
  }

  factory ServerTlsPolicyMtlsPolicy.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyMtlsPolicy(
      clientValidationCas: (() { final guardedValue = map['clientValidationCas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerTlsPolicyMtlsPolicyClientValidationCa>(guardedValue, (value) => ServerTlsPolicyMtlsPolicyClientValidationCa.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientValidationMode: (() { final guardedValue = map['clientValidationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientValidationTrustConfig: (() { final guardedValue = map['clientValidationTrustConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

