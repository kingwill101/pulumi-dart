// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_caresponse.dart';

/// Specification of the MTLSPolicy.
class MTLSPolicyResponse {
  /// Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  final pulumi.Input<List<ValidationCAResponse>> clientValidationCa;
  /// When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  final pulumi.Input<String> clientValidationMode;
  /// Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  final pulumi.Input<String> clientValidationTrustConfig;

  /// Creates a new [MTLSPolicyResponse].
  /// [clientValidationCa] Required if the policy is to be used with Traffic Director. For external HTTPS load balancers it must be empty. Defines the mechanism to obtain the Certificate Authority certificate to validate the client certificate.
  /// [clientValidationMode] When the client presents an invalid certificate or no certificate to the load balancer, the `client_validation_mode` specifies how the client connection is handled. Required if the policy is to be used with the external HTTPS load balancing. For Traffic Director it must be empty.
  /// [clientValidationTrustConfig] Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the chain validation will be performed against certificates configured in the given TrustConfig. Allowed only if the policy is to be used with external HTTPS load balancers.
  const MTLSPolicyResponse({
    required this.clientValidationCa,
    required this.clientValidationMode,
    required this.clientValidationTrustConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientValidationCa': pulumi.Input.mapInputValue<List<ValidationCAResponse>, List<Map<String, dynamic>>>(clientValidationCa, (value) => pulumi.Input.encodeList<ValidationCAResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientValidationMode': clientValidationMode,
      'clientValidationTrustConfig': clientValidationTrustConfig,
    };
  }

  factory MTLSPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MTLSPolicyResponse(
      clientValidationCa: pulumi.Input.fromValue(pulumi.Input.decodeList<ValidationCAResponse>(map['clientValidationCa']!, (value) => ValidationCAResponse.fromMap((value as Map).cast<String, dynamic>()))),
      clientValidationMode: pulumi.Input.fromValue(map['clientValidationMode'] as String),
      clientValidationTrustConfig: pulumi.Input.fromValue(map['clientValidationTrustConfig'] as String),
    );
  }
}
