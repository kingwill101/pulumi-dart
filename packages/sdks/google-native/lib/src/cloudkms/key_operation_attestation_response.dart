// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_chains_response.dart';

/// Contains an HSM-generated attestation about a key operation. For more information, see [Verifying attestations] (https://cloud.google.com/kms/docs/attest-key).
class KeyOperationAttestationResponse {
  /// The certificate chains needed to validate the attestation
  final pulumi.Input<CertificateChainsResponse> certChains;
  /// The attestation data provided by the HSM when the key operation was performed.
  final pulumi.Input<String> content;
  /// The format of the attestation data.
  final pulumi.Input<String> format;

  /// Creates a new [KeyOperationAttestationResponse].
  /// [certChains] The certificate chains needed to validate the attestation
  /// [content] The attestation data provided by the HSM when the key operation was performed.
  /// [format] The format of the attestation data.
  const KeyOperationAttestationResponse({
    required this.certChains,
    required this.content,
    required this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certChains': pulumi.Input.mapInputValue<CertificateChainsResponse, Map<String, dynamic>>(certChains, (value) => value.toMap()),
      'content': content,
      'format': format,
    };
  }

  factory KeyOperationAttestationResponse.fromMap(Map<String, dynamic> map) {
    return KeyOperationAttestationResponse(
      certChains: pulumi.Input.fromValue(CertificateChainsResponse.fromMap((map['certChains']! as Map).cast<String, dynamic>())),
      content: pulumi.Input.fromValue(map['content'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
    );
  }
}

