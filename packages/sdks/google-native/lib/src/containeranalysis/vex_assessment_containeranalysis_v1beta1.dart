// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_containeranalysis_v1beta1.dart';
import 'related_url_containeranalysis_v1beta1.dart';
import 'remediation_containeranalysis_v1beta1.dart';
import 'vex_assessment_state_containeranalysis_v1beta1.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentContaineranalysisV1beta1 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final pulumi.Input<String>? cve;
  /// Contains information about the impact of this vulnerability, this will change with time.
  final pulumi.Input<List<String>>? impacts;
  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final pulumi.Input<JustificationContaineranalysisV1beta1>? justification;
  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final pulumi.Input<String>? noteName;
  /// Holds a list of references associated with this vulnerability item and assessment.
  final pulumi.Input<List<RelatedUrlContaineranalysisV1beta1>>? relatedUris;
  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final pulumi.Input<List<RemediationContaineranalysisV1beta1>>? remediations;
  /// Provides the state of this Vulnerability assessment.
  final pulumi.Input<VexAssessmentStateContaineranalysisV1beta1>? state;
  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final pulumi.Input<String>? vulnerabilityId;

  /// Creates a new [VexAssessmentContaineranalysisV1beta1].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [noteName] The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  VexAssessmentContaineranalysisV1beta1({
    this.cve,
    this.impacts,
    this.justification,
    this.noteName,
    this.relatedUris,
    this.remediations,
    this.state,
    this.vulnerabilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cve': ?cve,
      'impacts': ?impacts,
      'justification': ?pulumi.Input.mapOptionalInputValue<JustificationContaineranalysisV1beta1, Map<String, dynamic>>(justification, (value) => value.toMap()),
      'noteName': ?noteName,
      'relatedUris': ?pulumi.Input.mapOptionalInputValue<List<RelatedUrlContaineranalysisV1beta1>, List<Map<String, dynamic>>>(relatedUris, (value) => pulumi.Input.encodeList<RelatedUrlContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remediations': ?pulumi.Input.mapOptionalInputValue<List<RemediationContaineranalysisV1beta1>, List<Map<String, dynamic>>>(remediations, (value) => pulumi.Input.encodeList<RemediationContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?pulumi.Input.mapOptionalInputValue<VexAssessmentStateContaineranalysisV1beta1, String>(state, (value) => value.value),
      'vulnerabilityId': ?vulnerabilityId,
    };
  }

  factory VexAssessmentContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return VexAssessmentContaineranalysisV1beta1(
      cve: map['cve'] == null ? null : (map['cve'] as String).input(),
      impacts: map['impacts'] == null ? null : ((map['impacts'] as List).cast<String>()).input(),
      justification: map['justification'] == null ? null : (JustificationContaineranalysisV1beta1.fromMap((map['justification'] as Map).cast<String, dynamic>())).input(),
      noteName: map['noteName'] == null ? null : (map['noteName'] as String).input(),
      relatedUris: map['relatedUris'] == null ? null : (pulumi.Input.decodeList<RelatedUrlContaineranalysisV1beta1>(map['relatedUris'], (value) => RelatedUrlContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      remediations: map['remediations'] == null ? null : (pulumi.Input.decodeList<RemediationContaineranalysisV1beta1>(map['remediations'], (value) => RemediationContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (VexAssessmentStateContaineranalysisV1beta1.fromValue(map['state'] as String)).input(),
      vulnerabilityId: map['vulnerabilityId'] == null ? null : (map['vulnerabilityId'] as String).input(),
    );
  }
}

