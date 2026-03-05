// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_authority.dart';
import 'basis.dart';
import 'build_type.dart';
import 'compliance_note_containeranalysis_v1alpha1.dart';
import 'deployable.dart';
import 'discovery.dart';
import 'document_note.dart';
import 'dsseattestation_note_containeranalysis_v1alpha1.dart';
import 'file_note.dart';
import 'package.dart';
import 'package_info_note.dart';
import 'related_url_containeranalysis_v1alpha1.dart';
import 'relationship_note.dart';
import 'sbomreference_note_containeranalysis_v1alpha1.dart';
import 'upgrade_note_containeranalysis_v1alpha1.dart';
import 'vulnerability_assessment_note_containeranalysis_v1alpha1.dart';
import 'vulnerability_type.dart';

/// {@template pulumi_containeranalysis_v1alpha1_note_containeranalysis_v1alpha1_args_doc}
/// The set of arguments for Note.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_note_containeranalysis_v1alpha1_args_doc}
class NoteContaineranalysisV1alpha1Args {
  /// A note describing an attestation role.
  final pulumi.Input<AttestationAuthority>? attestationAuthority;
  /// A note describing a base image.
  final pulumi.Input<Basis>? baseImage;
  /// Build provenance type for a verifiable build.
  final pulumi.Input<BuildType>? buildType;
  /// A note describing a compliance check.
  final pulumi.Input<ComplianceNoteContaineranalysisV1alpha1>? compliance;
  /// A note describing something that can be deployed.
  final pulumi.Input<Deployable>? deployable;
  /// A note describing a provider/analysis type.
  final pulumi.Input<Discovery>? discovery;
  /// A note describing a dsse attestation note.
  final pulumi.Input<DSSEAttestationNoteContaineranalysisV1alpha1>? dsseAttestation;
  /// Time of expiration for this note, null if note does not expire.
  final pulumi.Input<String>? expirationTime;
  /// A detailed description of this `Note`.
  final pulumi.Input<String>? longDescription;
  /// The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  final pulumi.Input<String>? name;
  /// The ID to use for this note.
  final pulumi.Input<String>? noteId;
  /// A note describing a package hosted by various package managers.
  final pulumi.Input<Package>? package;
  final pulumi.Input<String>? project;
  /// URLs associated with this note
  final pulumi.Input<List<RelatedUrlContaineranalysisV1alpha1>>? relatedUrl;
  /// A note describing a software bill of materials.
  final pulumi.Input<DocumentNote>? sbom;
  /// A note describing a reference to an SBOM.
  final pulumi.Input<SBOMReferenceNoteContaineranalysisV1alpha1>? sbomReference;
  /// A one sentence description of this `Note`.
  final pulumi.Input<String>? shortDescription;
  /// A note describing an SPDX File.
  final pulumi.Input<FileNote>? spdxFile;
  /// A note describing an SPDX Package.
  final pulumi.Input<PackageInfoNote>? spdxPackage;
  /// A note describing a relationship between SPDX elements.
  final pulumi.Input<RelationshipNote>? spdxRelationship;
  /// A note describing an upgrade.
  final pulumi.Input<UpgradeNoteContaineranalysisV1alpha1>? upgrade;
  /// A note describing a vulnerability assessment.
  final pulumi.Input<VulnerabilityAssessmentNoteContaineranalysisV1alpha1>? vulnerabilityAssessment;
  /// A package vulnerability type of note.
  final pulumi.Input<VulnerabilityType>? vulnerabilityType;

  /// Creates a new [NoteContaineranalysisV1alpha1Args].
  /// [attestationAuthority] A note describing an attestation role.
  /// [baseImage] A note describing a base image.
  /// [buildType] Build provenance type for a verifiable build.
  /// [compliance] A note describing a compliance check.
  /// [deployable] A note describing something that can be deployed.
  /// [discovery] A note describing a provider/analysis type.
  /// [dsseAttestation] A note describing a dsse attestation note.
  /// [expirationTime] Time of expiration for this note, null if note does not expire.
  /// [longDescription] A detailed description of this `Note`.
  /// [name] The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  /// [noteId] The ID to use for this note.
  /// [package] A note describing a package hosted by various package managers.
  /// [project] Optional.
  /// [relatedUrl] URLs associated with this note
  /// [sbom] A note describing a software bill of materials.
  /// [sbomReference] A note describing a reference to an SBOM.
  /// [shortDescription] A one sentence description of this `Note`.
  /// [spdxFile] A note describing an SPDX File.
  /// [spdxPackage] A note describing an SPDX Package.
  /// [spdxRelationship] A note describing a relationship between SPDX elements.
  /// [upgrade] A note describing an upgrade.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  /// [vulnerabilityType] A package vulnerability type of note.
  NoteContaineranalysisV1alpha1Args({
    this.attestationAuthority,
    this.baseImage,
    this.buildType,
    this.compliance,
    this.deployable,
    this.discovery,
    this.dsseAttestation,
    this.expirationTime,
    this.longDescription,
    this.name,
    this.noteId,
    this.package,
    this.project,
    this.relatedUrl,
    this.sbom,
    this.sbomReference,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.upgrade,
    this.vulnerabilityAssessment,
    this.vulnerabilityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority': ?pulumi.Input.mapOptionalInputValue<AttestationAuthority, Map<String, dynamic>>(attestationAuthority, (value) => value.toMap()),
      'baseImage': ?pulumi.Input.mapOptionalInputValue<Basis, Map<String, dynamic>>(baseImage, (value) => value.toMap()),
      'buildType': ?pulumi.Input.mapOptionalInputValue<BuildType, Map<String, dynamic>>(buildType, (value) => value.toMap()),
      'compliance': ?pulumi.Input.mapOptionalInputValue<ComplianceNoteContaineranalysisV1alpha1, Map<String, dynamic>>(compliance, (value) => value.toMap()),
      'deployable': ?pulumi.Input.mapOptionalInputValue<Deployable, Map<String, dynamic>>(deployable, (value) => value.toMap()),
      'discovery': ?pulumi.Input.mapOptionalInputValue<Discovery, Map<String, dynamic>>(discovery, (value) => value.toMap()),
      'dsseAttestation': ?pulumi.Input.mapOptionalInputValue<DSSEAttestationNoteContaineranalysisV1alpha1, Map<String, dynamic>>(dsseAttestation, (value) => value.toMap()),
      'expirationTime': ?expirationTime,
      'longDescription': ?longDescription,
      'name': ?name,
      'noteId': ?noteId,
      'package': ?pulumi.Input.mapOptionalInputValue<Package, Map<String, dynamic>>(package, (value) => value.toMap()),
      'project': ?project,
      'relatedUrl': ?pulumi.Input.mapOptionalInputValue<List<RelatedUrlContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(relatedUrl, (value) => pulumi.Input.encodeList<RelatedUrlContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sbom': ?pulumi.Input.mapOptionalInputValue<DocumentNote, Map<String, dynamic>>(sbom, (value) => value.toMap()),
      'sbomReference': ?pulumi.Input.mapOptionalInputValue<SBOMReferenceNoteContaineranalysisV1alpha1, Map<String, dynamic>>(sbomReference, (value) => value.toMap()),
      'shortDescription': ?shortDescription,
      'spdxFile': ?pulumi.Input.mapOptionalInputValue<FileNote, Map<String, dynamic>>(spdxFile, (value) => value.toMap()),
      'spdxPackage': ?pulumi.Input.mapOptionalInputValue<PackageInfoNote, Map<String, dynamic>>(spdxPackage, (value) => value.toMap()),
      'spdxRelationship': ?pulumi.Input.mapOptionalInputValue<RelationshipNote, Map<String, dynamic>>(spdxRelationship, (value) => value.toMap()),
      'upgrade': ?pulumi.Input.mapOptionalInputValue<UpgradeNoteContaineranalysisV1alpha1, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
      'vulnerabilityAssessment': ?pulumi.Input.mapOptionalInputValue<VulnerabilityAssessmentNoteContaineranalysisV1alpha1, Map<String, dynamic>>(vulnerabilityAssessment, (value) => value.toMap()),
      'vulnerabilityType': ?pulumi.Input.mapOptionalInputValue<VulnerabilityType, Map<String, dynamic>>(vulnerabilityType, (value) => value.toMap()),
    };
  }

  factory NoteContaineranalysisV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return NoteContaineranalysisV1alpha1Args(
      attestationAuthority: (() { final guardedValue = map['attestationAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttestationAuthority.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baseImage: (() { final guardedValue = map['baseImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Basis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildType: (() { final guardedValue = map['buildType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComplianceNoteContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deployable: (() { final guardedValue = map['deployable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Deployable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Discovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dsseAttestation: (() { final guardedValue = map['dsseAttestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DSSEAttestationNoteContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longDescription: (() { final guardedValue = map['longDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noteId: (() { final guardedValue = map['noteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Package.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relatedUrl: (() { final guardedValue = map['relatedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RelatedUrlContaineranalysisV1alpha1>(guardedValue, (value) => RelatedUrlContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sbom: (() { final guardedValue = map['sbom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DocumentNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBOMReferenceNoteContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spdxFile: (() { final guardedValue = map['spdxFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spdxPackage: (() { final guardedValue = map['spdxPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackageInfoNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spdxRelationship: (() { final guardedValue = map['spdxRelationship']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelationshipNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeNoteContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerabilityAssessment: (() { final guardedValue = map['vulnerabilityAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityAssessmentNoteContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerabilityType: (() { final guardedValue = map['vulnerabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

