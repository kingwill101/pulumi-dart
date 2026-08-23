// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mtlspolicy_client_validation_mode.dart';
import 'validation_ca.dart';

/// Specification of the MTLSPolicy.
class MTLSPolicy {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  final pulumi.Input<List<ValidationCA>>? clientValidationCa;
  /// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  final pulumi.Input<MTLSPolicyClientValidationMode>? clientValidationMode;
  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  final pulumi.Input<String>? clientValidationTrustConfig;

  /// Creates a new [MTLSPolicy].
  /// [clientValidationCa] Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  /// [clientValidationMode] When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  /// [clientValidationTrustConfig] Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  const MTLSPolicy({
    this.clientValidationCa,
    this.clientValidationMode,
    this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientValidationCa': ?pulumi.Input.mapOptionalInputValue<List<ValidationCA>, List<Map<String, dynamic>>>(clientValidationCa, (value) => pulumi.Input.encodeList<ValidationCA, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientValidationMode': ?pulumi.Input.mapOptionalInputValue<MTLSPolicyClientValidationMode, String>(clientValidationMode, (value) => value.wireValue),
      'clientValidationTrustConfig': ?clientValidationTrustConfig,
    };
  }

  factory MTLSPolicy.fromMap(Map<String, dynamic> map) {
    return MTLSPolicy(
      clientValidationCa: (() { final guardedValue = map['clientValidationCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ValidationCA>(guardedValue, (value) => ValidationCA.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientValidationMode: (() { final guardedValue = map['clientValidationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MTLSPolicyClientValidationMode.fromValue(guardedValue as String)); })(),
      clientValidationTrustConfig: (() { final guardedValue = map['clientValidationTrustConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
