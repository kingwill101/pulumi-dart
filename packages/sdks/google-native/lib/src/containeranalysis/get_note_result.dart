// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_note_response.dart';
import 'build_note_response.dart';
import 'compliance_note_response.dart';
import 'deployment_note_response.dart';
import 'discovery_note_response.dart';
import 'dsseattestation_note_response.dart';
import 'image_note_response.dart';
import 'package_note_response.dart';
import 'related_url_response.dart';
import 'sbomreference_note_response.dart';
import 'upgrade_note_response.dart';
import 'vulnerability_assessment_note_response.dart';
import 'vulnerability_note_response.dart';

/// Result data returned by getNote.
class GetNoteResult {
  /// A note describing an attestation role.
  final AttestationNoteResponse? attestation;
  /// A note describing build provenance for a verifiable build.
  final BuildNoteResponse? build;
  /// A note describing a compliance check.
  final ComplianceNoteResponse? compliance;
  /// The time this note was created. This field can be used as a filter in list requests.
  final String? createTime;
  /// A note describing something that can be deployed.
  final DeploymentNoteResponse? deployment;
  /// A note describing the initial analysis of a resource.
  final DiscoveryNoteResponse? discovery;
  /// A note describing a dsse attestation note.
  final DSSEAttestationNoteResponse? dsseAttestation;
  /// Time of expiration for this note. Empty if note does not expire.
  final String? expirationTime;
  /// A note describing a base image.
  final ImageNoteResponse? image;
  /// The type of analysis. This field can be used as a filter in list requests.
  final String? kind;
  /// A detailed description of this note.
  final String? longDescription;
  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  final String? name;
  /// A note describing a package hosted by various package managers.
  final PackageNoteResponse? package;
  /// Other notes related to this note.
  final List<String>? relatedNoteNames;
  /// URLs associated with this note.
  final List<RelatedUrlResponse>? relatedUrl;
  /// A note describing an SBOM reference.
  final SBOMReferenceNoteResponse? sbomReference;
  /// A one sentence description of this note.
  final String? shortDescription;
  /// The time this note was last updated. This field can be used as a filter in list requests.
  final String? updateTime;
  /// A note describing available package upgrades.
  final UpgradeNoteResponse? upgrade;
  /// A note describing a package vulnerability.
  final VulnerabilityNoteResponse? vulnerability;
  /// A note describing a vulnerability assessment.
  final VulnerabilityAssessmentNoteResponse? vulnerabilityAssessment;

  /// Creates a new [GetNoteResult].
  /// [attestation] A note describing an attestation role.
  /// [build] A note describing build provenance for a verifiable build.
  /// [compliance] A note describing a compliance check.
  /// [createTime] The time this note was created. This field can be used as a filter in list requests.
  /// [deployment] A note describing something that can be deployed.
  /// [discovery] A note describing the initial analysis of a resource.
  /// [dsseAttestation] A note describing a dsse attestation note.
  /// [expirationTime] Time of expiration for this note. Empty if note does not expire.
  /// [image] A note describing a base image.
  /// [kind] The type of analysis. This field can be used as a filter in list requests.
  /// [longDescription] A detailed description of this note.
  /// [name] The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// [package] A note describing a package hosted by various package managers.
  /// [relatedNoteNames] Other notes related to this note.
  /// [relatedUrl] URLs associated with this note.
  /// [sbomReference] A note describing an SBOM reference.
  /// [shortDescription] A one sentence description of this note.
  /// [updateTime] The time this note was last updated. This field can be used as a filter in list requests.
  /// [upgrade] A note describing available package upgrades.
  /// [vulnerability] A note describing a package vulnerability.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  const GetNoteResult({
    this.attestation,
    this.build,
    this.compliance,
    this.createTime,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.expirationTime,
    this.image,
    this.kind,
    this.longDescription,
    this.name,
    this.package,
    this.relatedNoteNames,
    this.relatedUrl,
    this.sbomReference,
    this.shortDescription,
    this.updateTime,
    this.upgrade,
    this.vulnerability,
    this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?attestation?.toMap(),
      'build': ?build?.toMap(),
      'compliance': ?compliance?.toMap(),
      'createTime': ?createTime,
      'deployment': ?deployment?.toMap(),
      'discovery': ?discovery?.toMap(),
      'dsseAttestation': ?dsseAttestation?.toMap(),
      'expirationTime': ?expirationTime,
      'image': ?image?.toMap(),
      'kind': ?kind,
      'longDescription': ?longDescription,
      'name': ?name,
      'package': ?package?.toMap(),
      'relatedNoteNames': ?relatedNoteNames,
      'relatedUrl': ?(() { final guardedValue = relatedUrl; if (guardedValue == null) return null; return pulumi.Input.encodeList<RelatedUrlResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sbomReference': ?sbomReference?.toMap(),
      'shortDescription': ?shortDescription,
      'updateTime': ?updateTime,
      'upgrade': ?upgrade?.toMap(),
      'vulnerability': ?vulnerability?.toMap(),
      'vulnerabilityAssessment': ?vulnerabilityAssessment?.toMap(),
    };
  }

  factory GetNoteResult.fromMap(Map<String, dynamic> map) {
    return GetNoteResult(
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return AttestationNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return BuildNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return ComplianceNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return DeploymentNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return DiscoveryNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dsseAttestation: (() { final guardedValue = map['dsseAttestation']; if (guardedValue == null) return null; return DSSEAttestationNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return ImageNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      longDescription: (() { final guardedValue = map['longDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return PackageNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      relatedNoteNames: (() { final guardedValue = map['relatedNoteNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      relatedUrl: (() { final guardedValue = map['relatedUrl']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RelatedUrlResponse>(guardedValue, (value) => RelatedUrlResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return SBOMReferenceNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return UpgradeNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerability: (() { final guardedValue = map['vulnerability']; if (guardedValue == null) return null; return VulnerabilityNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerabilityAssessment: (() { final guardedValue = map['vulnerabilityAssessment']; if (guardedValue == null) return null; return VulnerabilityAssessmentNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
