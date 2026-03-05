// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_response_containeranalysis_v1alpha1.dart';
import 'remediation_response_containeranalysis_v1alpha1.dart';
import 'uriresponse.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentResponseContaineranalysisV1alpha1 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability.
  final pulumi.Input<String> cve;
  /// Contains information about the impact of this vulnerability, this will change with time.
  final pulumi.Input<List<String>> impacts;
  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final pulumi.Input<JustificationResponseContaineranalysisV1alpha1> justification;
  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final pulumi.Input<String> noteName;
  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final pulumi.Input<List<URIResponse>> relatedUris;
  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final pulumi.Input<List<RemediationResponseContaineranalysisV1alpha1>> remediations;
  /// Provides the state of this Vulnerability assessment.
  final pulumi.Input<String> state;
  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final pulumi.Input<String> vulnerabilityId;

  /// Creates a new [VexAssessmentResponseContaineranalysisV1alpha1].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [noteName] The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  VexAssessmentResponseContaineranalysisV1alpha1({
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
      'justification': pulumi.Input.mapInputValue<JustificationResponseContaineranalysisV1alpha1, Map<String, dynamic>>(justification, (value) => value.toMap()),
      'noteName': noteName,
      'relatedUris': pulumi.Input.mapInputValue<List<URIResponse>, List<Map<String, dynamic>>>(relatedUris, (value) => pulumi.Input.encodeList<URIResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remediations': pulumi.Input.mapInputValue<List<RemediationResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(remediations, (value) => pulumi.Input.encodeList<RemediationResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'vulnerabilityId': vulnerabilityId,
    };
  }

  factory VexAssessmentResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return VexAssessmentResponseContaineranalysisV1alpha1(
      cve: pulumi.Input.fromValue(map['cve'] as String),
      impacts: pulumi.Input.fromValue((map['impacts'] as List).cast<String>()),
      justification: pulumi.Input.fromValue(JustificationResponseContaineranalysisV1alpha1.fromMap((map['justification']! as Map).cast<String, dynamic>())),
      noteName: pulumi.Input.fromValue(map['noteName'] as String),
      relatedUris: pulumi.Input.fromValue(pulumi.Input.decodeList<URIResponse>(map['relatedUris']!, (value) => URIResponse.fromMap((value as Map).cast<String, dynamic>()))),
      remediations: pulumi.Input.fromValue(pulumi.Input.decodeList<RemediationResponseContaineranalysisV1alpha1>(map['remediations']!, (value) => RemediationResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      vulnerabilityId: pulumi.Input.fromValue(map['vulnerabilityId'] as String),
    );
  }
}

