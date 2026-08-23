// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_state.dart';
import 'justification.dart';
import 'related_url.dart';
import 'remediation.dart';

/// Assessment provides all information that is related to a single vulnerability for this product.
class Assessment {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final pulumi.Input<String>? cve;
  /// Contains information about the impact of this vulnerability, this will change with time.
  final pulumi.Input<List<String>>? impacts;
  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final pulumi.Input<Justification>? justification;
  /// A detailed description of this Vex.
  final pulumi.Input<String>? longDescription;
  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final pulumi.Input<List<RelatedUrl>>? relatedUris;
  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final pulumi.Input<List<Remediation>>? remediations;
  /// A one sentence description of this Vex.
  final pulumi.Input<String>? shortDescription;
  /// Provides the state of this Vulnerability assessment.
  final pulumi.Input<AssessmentState>? state;
  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final pulumi.Input<String>? vulnerabilityId;

  /// Creates a new [Assessment].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [longDescription] A detailed description of this Vex.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [shortDescription] A one sentence description of this Vex.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  const Assessment({
    this.cve,
    this.impacts,
    this.justification,
    this.longDescription,
    this.relatedUris,
    this.remediations,
    this.shortDescription,
    this.state,
    this.vulnerabilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cve': ?cve,
      'impacts': ?impacts,
      'justification': ?pulumi.Input.mapOptionalInputValue<Justification, Map<String, dynamic>>(justification, (value) => value.toMap()),
      'longDescription': ?longDescription,
      'relatedUris': ?pulumi.Input.mapOptionalInputValue<List<RelatedUrl>, List<Map<String, dynamic>>>(relatedUris, (value) => pulumi.Input.encodeList<RelatedUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remediations': ?pulumi.Input.mapOptionalInputValue<List<Remediation>, List<Map<String, dynamic>>>(remediations, (value) => pulumi.Input.encodeList<Remediation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shortDescription': ?shortDescription,
      'state': ?pulumi.Input.mapOptionalInputValue<AssessmentState, String>(state, (value) => value.wireValue),
      'vulnerabilityId': ?vulnerabilityId,
    };
  }

  factory Assessment.fromMap(Map<String, dynamic> map) {
    return Assessment(
      cve: (() { final guardedValue = map['cve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      impacts: (() { final guardedValue = map['impacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Justification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      longDescription: (() { final guardedValue = map['longDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relatedUris: (() { final guardedValue = map['relatedUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RelatedUrl>(guardedValue, (value) => RelatedUrl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      remediations: (() { final guardedValue = map['remediations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Remediation>(guardedValue, (value) => Remediation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentState.fromValue(guardedValue as String)); })(),
      vulnerabilityId: (() { final guardedValue = map['vulnerabilityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
