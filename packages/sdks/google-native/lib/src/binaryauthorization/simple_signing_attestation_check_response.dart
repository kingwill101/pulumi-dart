// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_authenticator_response.dart';

/// Require a signed [DSSE](https://github.com/secure-systems-lab/dsse) attestation with type SimpleSigning.
class SimpleSigningAttestationCheckResponse {
  /// The authenticators required by this check to verify an attestation. Typically this is one or more PKIX public keys for signature verification. Only one authenticator needs to consider an attestation verified in order for an attestation to be considered fully authenticated. In otherwords, this list of authenticators is an "OR" of the authenticator results. At least one authenticator is required.
  final pulumi.Input<List<AttestationAuthenticatorResponse>> attestationAuthenticators;
  /// Optional. The projects where attestations are stored as Container Analysis Occurrences. Only one attestation needs to successfully verify an image for this check to pass, so a single verified attestation found in any of `container_analysis_attestation_projects` is sufficient for the check to pass. When fetching Occurrences from Container Analysis, only 'AttestationOccurrence' kinds are considered. In the future, additional Occurrence kinds may be added to the query.
  final pulumi.Input<List<String>> containerAnalysisAttestationProjects;

  /// Creates a new [SimpleSigningAttestationCheckResponse].
  /// [attestationAuthenticators] The authenticators required by this check to verify an attestation. Typically this is one or more PKIX public keys for signature verification. Only one authenticator needs to consider an attestation verified in order for an attestation to be considered fully authenticated. In otherwords, this list of authenticators is an "OR" of the authenticator results. At least one authenticator is required.
  /// [containerAnalysisAttestationProjects] Optional. The projects where attestations are stored as Container Analysis Occurrences. Only one attestation needs to successfully verify an image for this check to pass, so a single verified attestation found in any of `container_analysis_attestation_projects` is sufficient for the check to pass. When fetching Occurrences from Container Analysis, only 'AttestationOccurrence' kinds are considered. In the future, additional Occurrence kinds may be added to the query.
  const SimpleSigningAttestationCheckResponse({
    required this.attestationAuthenticators,
    required this.containerAnalysisAttestationProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthenticators': pulumi.Input.mapInputValue<List<AttestationAuthenticatorResponse>, List<Map<String, dynamic>>>(attestationAuthenticators, (value) => pulumi.Input.encodeList<AttestationAuthenticatorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerAnalysisAttestationProjects': containerAnalysisAttestationProjects,
    };
  }

  factory SimpleSigningAttestationCheckResponse.fromMap(Map<String, dynamic> map) {
    return SimpleSigningAttestationCheckResponse(
      attestationAuthenticators: pulumi.Input.fromValue(pulumi.Input.decodeList<AttestationAuthenticatorResponse>(map['attestationAuthenticators']!, (value) => AttestationAuthenticatorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      containerAnalysisAttestationProjects: pulumi.Input.fromValue((map['containerAnalysisAttestationProjects'] as List).cast<String>()),
    );
  }
}
