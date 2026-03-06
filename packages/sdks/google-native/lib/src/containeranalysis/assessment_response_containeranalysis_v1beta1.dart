// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_response_containeranalysis_v1beta1.dart';
import 'related_url_response_containeranalysis_v1beta1.dart';
import 'remediation_response_containeranalysis_v1beta1.dart';

/// Assessment provides all information that is related to a single vulnerability for this product.
class AssessmentResponseContaineranalysisV1beta1 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final pulumi.Input<String> cve;
  /// Contains information about the impact of this vulnerability, this will change with time.
  final pulumi.Input<List<String>> impacts;
  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final pulumi.Input<JustificationResponseContaineranalysisV1beta1> justification;
  /// A detailed description of this Vex.
  final pulumi.Input<String> longDescription;
  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final pulumi.Input<List<RelatedUrlResponseContaineranalysisV1beta1>> relatedUris;
  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final pulumi.Input<List<RemediationResponseContaineranalysisV1beta1>> remediations;
  /// A one sentence description of this Vex.
  final pulumi.Input<String> shortDescription;
  /// Provides the state of this Vulnerability assessment.
  final pulumi.Input<String> state;
  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final pulumi.Input<String> vulnerabilityId;

  /// Creates a new [AssessmentResponseContaineranalysisV1beta1].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [longDescription] A detailed description of this Vex.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [shortDescription] A one sentence description of this Vex.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  const AssessmentResponseContaineranalysisV1beta1({
    required this.cve,
    required this.impacts,
    required this.justification,
    required this.longDescription,
    required this.relatedUris,
    required this.remediations,
    required this.shortDescription,
    required this.state,
    required this.vulnerabilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cve': cve,
      'impacts': impacts,
      'justification': pulumi.Input.mapInputValue<JustificationResponseContaineranalysisV1beta1, Map<String, dynamic>>(justification, (value) => value.toMap()),
      'longDescription': longDescription,
      'relatedUris': pulumi.Input.mapInputValue<List<RelatedUrlResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(relatedUris, (value) => pulumi.Input.encodeList<RelatedUrlResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remediations': pulumi.Input.mapInputValue<List<RemediationResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(remediations, (value) => pulumi.Input.encodeList<RemediationResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shortDescription': shortDescription,
      'state': state,
      'vulnerabilityId': vulnerabilityId,
    };
  }

  factory AssessmentResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AssessmentResponseContaineranalysisV1beta1(
      cve: pulumi.Input.fromValue(map['cve'] as String),
      impacts: pulumi.Input.fromValue((map['impacts'] as List).cast<String>()),
      justification: pulumi.Input.fromValue(JustificationResponseContaineranalysisV1beta1.fromMap((map['justification']! as Map).cast<String, dynamic>())),
      longDescription: pulumi.Input.fromValue(map['longDescription'] as String),
      relatedUris: pulumi.Input.fromValue(pulumi.Input.decodeList<RelatedUrlResponseContaineranalysisV1beta1>(map['relatedUris']!, (value) => RelatedUrlResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      remediations: pulumi.Input.fromValue(pulumi.Input.decodeList<RemediationResponseContaineranalysisV1beta1>(map['remediations']!, (value) => RemediationResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      shortDescription: pulumi.Input.fromValue(map['shortDescription'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      vulnerabilityId: pulumi.Input.fromValue(map['vulnerabilityId'] as String),
    );
  }
}

