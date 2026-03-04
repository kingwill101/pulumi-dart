// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_response.dart';
import 'related_url_response.dart';
import 'remediation_response.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentResponse {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final pulumi.Input<String> cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final pulumi.Input<List<String>> impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final pulumi.Input<JustificationResponse> justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final pulumi.Input<String> noteName;

  /// Holds a list of references associated with this vulnerability item and assessment.
  final pulumi.Input<List<RelatedUrlResponse>> relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final pulumi.Input<List<RemediationResponse>> remediations;

  /// Provides the state of this Vulnerability assessment.
  final pulumi.Input<String> state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final pulumi.Input<String> vulnerabilityId;

  /// Creates a new [VexAssessmentResponse].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [noteName] The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  VexAssessmentResponse({
    required this.cve,
    required this.impacts,
    required this.justification,
    required this.noteName,
    required this.relatedUris,
    required this.remediations,
    required this.state,
    required this.vulnerabilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cve': cve,
      'impacts': impacts,
      'justification':
          pulumi.Input.mapInputValue<
            JustificationResponse,
            Map<String, dynamic>
          >(justification, (value) => value.toMap()),
      'noteName': noteName,
      'relatedUris':
          pulumi.Input.mapInputValue<
            List<RelatedUrlResponse>,
            List<Map<String, dynamic>>
          >(
            relatedUris,
            (value) =>
                pulumi.Input.encodeList<
                  RelatedUrlResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'remediations':
          pulumi.Input.mapInputValue<
            List<RemediationResponse>,
            List<Map<String, dynamic>>
          >(
            remediations,
            (value) =>
                pulumi.Input.encodeList<
                  RemediationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'state': state,
      'vulnerabilityId': vulnerabilityId,
    };
  }

  factory VexAssessmentResponse.fromMap(Map<String, dynamic> map) {
    return VexAssessmentResponse(
      cve: pulumi.Input.fromValue(map['cve'] as String),
      impacts: pulumi.Input.fromValue((map['impacts'] as List).cast<String>()),
      justification: pulumi.Input.fromValue(
        JustificationResponse.fromMap(
          (map['justification']! as Map).cast<String, dynamic>(),
        ),
      ),
      noteName: pulumi.Input.fromValue(map['noteName'] as String),
      relatedUris: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RelatedUrlResponse>(
          map['relatedUris']!,
          (value) => RelatedUrlResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      remediations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RemediationResponse>(
          map['remediations']!,
          (value) => RemediationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      state: pulumi.Input.fromValue(map['state'] as String),
      vulnerabilityId: pulumi.Input.fromValue(map['vulnerabilityId'] as String),
    );
  }
}
