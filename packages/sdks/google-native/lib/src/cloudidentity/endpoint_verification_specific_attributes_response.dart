// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_attributes_response.dart';

/// Resource representing the Endpoint Verification-specific attributes of a Device. https://cloud.google.com/endpoint-verification/docs/overview
class EndpointVerificationSpecificAttributesResponse {
  /// Details of certificates.
  final pulumi.Input<List<CertificateAttributesResponse>> certificateAttributes;

  /// Creates a new [EndpointVerificationSpecificAttributesResponse].
  /// [certificateAttributes] Details of certificates.
  EndpointVerificationSpecificAttributesResponse({
    required this.certificateAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAttributes': pulumi.Input.mapInputValue<List<CertificateAttributesResponse>, List<Map<String, dynamic>>>(certificateAttributes, (value) => pulumi.Input.encodeList<CertificateAttributesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndpointVerificationSpecificAttributesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointVerificationSpecificAttributesResponse(
      certificateAttributes: pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateAttributesResponse>(map['certificateAttributes']!, (value) => CertificateAttributesResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

