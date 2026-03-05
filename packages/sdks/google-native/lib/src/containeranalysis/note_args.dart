// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_note.dart';
import 'build_note.dart';
import 'compliance_note.dart';
import 'deployment_note.dart';
import 'discovery_note.dart';
import 'dsseattestation_note.dart';
import 'image_note.dart';
import 'package_note.dart';
import 'related_url.dart';
import 'sbomreference_note.dart';
import 'upgrade_note.dart';
import 'vulnerability_assessment_note.dart';
import 'vulnerability_note.dart';

/// {@template pulumi_containeranalysis_v1_note_args_doc}
/// The set of arguments for Note.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_note_args_doc}
class NoteArgs {
  /// A note describing an attestation role.
  final pulumi.Input<AttestationNote>? attestation;
  /// A note describing build provenance for a verifiable build.
  final pulumi.Input<BuildNote>? build;
  /// A note describing a compliance check.
  final pulumi.Input<ComplianceNote>? compliance;
  /// A note describing something that can be deployed.
  final pulumi.Input<DeploymentNote>? deployment;
  /// A note describing the initial analysis of a resource.
  final pulumi.Input<DiscoveryNote>? discovery;
  /// A note describing a dsse attestation note.
  final pulumi.Input<DSSEAttestationNote>? dsseAttestation;
  /// Time of expiration for this note. Empty if note does not expire.
  final pulumi.Input<String>? expirationTime;
  /// A note describing a base image.
  final pulumi.Input<ImageNote>? image;
  /// A detailed description of this note.
  final pulumi.Input<String>? longDescription;
  /// Required. The ID to use for this note.
  final pulumi.Input<String> noteId;
  /// A note describing a package hosted by various package managers.
  final pulumi.Input<PackageNote>? package;
  final pulumi.Input<String>? project;
  /// Other notes related to this note.
  final pulumi.Input<List<String>>? relatedNoteNames;
  /// URLs associated with this note.
  final pulumi.Input<List<RelatedUrl>>? relatedUrl;
  /// A note describing an SBOM reference.
  final pulumi.Input<SBOMReferenceNote>? sbomReference;
  /// A one sentence description of this note.
  final pulumi.Input<String>? shortDescription;
  /// A note describing available package upgrades.
  final pulumi.Input<UpgradeNote>? upgrade;
  /// A note describing a package vulnerability.
  final pulumi.Input<VulnerabilityNote>? vulnerability;
  /// A note describing a vulnerability assessment.
  final pulumi.Input<VulnerabilityAssessmentNote>? vulnerabilityAssessment;

  /// Creates a new [NoteArgs].
  /// [attestation] A note describing an attestation role.
  /// [build] A note describing build provenance for a verifiable build.
  /// [compliance] A note describing a compliance check.
  /// [deployment] A note describing something that can be deployed.
  /// [discovery] A note describing the initial analysis of a resource.
  /// [dsseAttestation] A note describing a dsse attestation note.
  /// [expirationTime] Time of expiration for this note. Empty if note does not expire.
  /// [image] A note describing a base image.
  /// [longDescription] A detailed description of this note.
  /// [noteId] Required. The ID to use for this note.
  /// [package] A note describing a package hosted by various package managers.
  /// [project] Optional.
  /// [relatedNoteNames] Other notes related to this note.
  /// [relatedUrl] URLs associated with this note.
  /// [sbomReference] A note describing an SBOM reference.
  /// [shortDescription] A one sentence description of this note.
  /// [upgrade] A note describing available package upgrades.
  /// [vulnerability] A note describing a package vulnerability.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  NoteArgs({
    this.attestation,
    this.build,
    this.compliance,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.expirationTime,
    this.image,
    this.longDescription,
    required this.noteId,
    this.package,
    this.project,
    this.relatedNoteNames,
    this.relatedUrl,
    this.sbomReference,
    this.shortDescription,
    this.upgrade,
    this.vulnerability,
    this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?pulumi.Input.mapOptionalInputValue<AttestationNote, Map<String, dynamic>>(attestation, (value) => value.toMap()),
      'build': ?pulumi.Input.mapOptionalInputValue<BuildNote, Map<String, dynamic>>(build, (value) => value.toMap()),
      'compliance': ?pulumi.Input.mapOptionalInputValue<ComplianceNote, Map<String, dynamic>>(compliance, (value) => value.toMap()),
      'deployment': ?pulumi.Input.mapOptionalInputValue<DeploymentNote, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'discovery': ?pulumi.Input.mapOptionalInputValue<DiscoveryNote, Map<String, dynamic>>(discovery, (value) => value.toMap()),
      'dsseAttestation': ?pulumi.Input.mapOptionalInputValue<DSSEAttestationNote, Map<String, dynamic>>(dsseAttestation, (value) => value.toMap()),
      'expirationTime': ?expirationTime,
      'image': ?pulumi.Input.mapOptionalInputValue<ImageNote, Map<String, dynamic>>(image, (value) => value.toMap()),
      'longDescription': ?longDescription,
      'noteId': noteId,
      'package': ?pulumi.Input.mapOptionalInputValue<PackageNote, Map<String, dynamic>>(package, (value) => value.toMap()),
      'project': ?project,
      'relatedNoteNames': ?relatedNoteNames,
      'relatedUrl': ?pulumi.Input.mapOptionalInputValue<List<RelatedUrl>, List<Map<String, dynamic>>>(relatedUrl, (value) => pulumi.Input.encodeList<RelatedUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sbomReference': ?pulumi.Input.mapOptionalInputValue<SBOMReferenceNote, Map<String, dynamic>>(sbomReference, (value) => value.toMap()),
      'shortDescription': ?shortDescription,
      'upgrade': ?pulumi.Input.mapOptionalInputValue<UpgradeNote, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
      'vulnerability': ?pulumi.Input.mapOptionalInputValue<VulnerabilityNote, Map<String, dynamic>>(vulnerability, (value) => value.toMap()),
      'vulnerabilityAssessment': ?pulumi.Input.mapOptionalInputValue<VulnerabilityAssessmentNote, Map<String, dynamic>>(vulnerabilityAssessment, (value) => value.toMap()),
    };
  }

  factory NoteArgs.fromMap(Map<String, dynamic> map) {
    return NoteArgs(
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttestationNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComplianceNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveryNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dsseAttestation: (() { final guardedValue = map['dsseAttestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DSSEAttestationNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      longDescription: (() { final guardedValue = map['longDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noteId: pulumi.Input.fromValue(map['noteId'] as String),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackageNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relatedNoteNames: (() { final guardedValue = map['relatedNoteNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      relatedUrl: (() { final guardedValue = map['relatedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RelatedUrl>(guardedValue, (value) => RelatedUrl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBOMReferenceNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerability: (() { final guardedValue = map['vulnerability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerabilityAssessment: (() { final guardedValue = map['vulnerabilityAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityAssessmentNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

