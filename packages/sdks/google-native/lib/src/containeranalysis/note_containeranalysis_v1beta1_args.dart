// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority.dart';
import 'basis_containeranalysis_v1beta1.dart';
import 'build.dart';
import 'deployable_containeranalysis_v1beta1.dart';
import 'discovery_containeranalysis_v1beta1.dart';
import 'document_note_containeranalysis_v1beta1.dart';
import 'file_note_containeranalysis_v1beta1.dart';
import 'in_toto.dart';
import 'package_containeranalysis_v1beta1.dart';
import 'package_info_note_containeranalysis_v1beta1.dart';
import 'related_url_containeranalysis_v1beta1.dart';
import 'relationship_note_containeranalysis_v1beta1.dart';
import 'sbomreference_note_containeranalysis_v1beta1.dart';
import 'vulnerability.dart';
import 'vulnerability_assessment_note_containeranalysis_v1beta1.dart';

/// {@template pulumi_containeranalysis_v1beta1_note_containeranalysis_v1beta1_args_doc}
/// The set of arguments for Note.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_note_containeranalysis_v1beta1_args_doc}
class NoteContaineranalysisV1beta1Args {
  /// A note describing an attestation role.
  final pulumi.Input<Authority>? attestationAuthority;
  /// A note describing a base image.
  final pulumi.Input<BasisContaineranalysisV1beta1>? baseImage;
  /// A note describing build provenance for a verifiable build.
  final pulumi.Input<Build>? build;
  /// A note describing something that can be deployed.
  final pulumi.Input<DeployableContaineranalysisV1beta1>? deployable;
  /// A note describing the initial analysis of a resource.
  final pulumi.Input<DiscoveryContaineranalysisV1beta1>? discovery;
  /// Time of expiration for this note. Empty if note does not expire.
  final pulumi.Input<String>? expirationTime;
  /// A note describing an in-toto link.
  final pulumi.Input<InToto>? intoto;
  /// A detailed description of this note.
  final pulumi.Input<String>? longDescription;
  /// Required. The ID to use for this note.
  final pulumi.Input<String> noteId;
  /// A note describing a package hosted by various package managers.
  final pulumi.Input<PackageContaineranalysisV1beta1>? package;
  final pulumi.Input<String>? project;
  /// Other notes related to this note.
  final pulumi.Input<List<String>>? relatedNoteNames;
  /// URLs associated with this note.
  final pulumi.Input<List<RelatedUrlContaineranalysisV1beta1>>? relatedUrl;
  /// A note describing a software bill of materials.
  final pulumi.Input<DocumentNoteContaineranalysisV1beta1>? sbom;
  /// A note describing an SBOM reference.
  final pulumi.Input<SBOMReferenceNoteContaineranalysisV1beta1>? sbomReference;
  /// A one sentence description of this note.
  final pulumi.Input<String>? shortDescription;
  /// A note describing an SPDX File.
  final pulumi.Input<FileNoteContaineranalysisV1beta1>? spdxFile;
  /// A note describing an SPDX Package.
  final pulumi.Input<PackageInfoNoteContaineranalysisV1beta1>? spdxPackage;
  /// A note describing an SPDX File.
  final pulumi.Input<RelationshipNoteContaineranalysisV1beta1>? spdxRelationship;
  /// A note describing a package vulnerability.
  final pulumi.Input<Vulnerability>? vulnerability;
  /// A note describing a vulnerability assessment.
  final pulumi.Input<VulnerabilityAssessmentNoteContaineranalysisV1beta1>? vulnerabilityAssessment;

  /// Creates a new [NoteContaineranalysisV1beta1Args].
  /// [attestationAuthority] A note describing an attestation role.
  /// [baseImage] A note describing a base image.
  /// [build] A note describing build provenance for a verifiable build.
  /// [deployable] A note describing something that can be deployed.
  /// [discovery] A note describing the initial analysis of a resource.
  /// [expirationTime] Time of expiration for this note. Empty if note does not expire.
  /// [intoto] A note describing an in-toto link.
  /// [longDescription] A detailed description of this note.
  /// [noteId] Required. The ID to use for this note.
  /// [package] A note describing a package hosted by various package managers.
  /// [project] Optional.
  /// [relatedNoteNames] Other notes related to this note.
  /// [relatedUrl] URLs associated with this note.
  /// [sbom] A note describing a software bill of materials.
  /// [sbomReference] A note describing an SBOM reference.
  /// [shortDescription] A one sentence description of this note.
  /// [spdxFile] A note describing an SPDX File.
  /// [spdxPackage] A note describing an SPDX Package.
  /// [spdxRelationship] A note describing an SPDX File.
  /// [vulnerability] A note describing a package vulnerability.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  NoteContaineranalysisV1beta1Args({
    this.attestationAuthority,
    this.baseImage,
    this.build,
    this.deployable,
    this.discovery,
    this.expirationTime,
    this.intoto,
    this.longDescription,
    required this.noteId,
    this.package,
    this.project,
    this.relatedNoteNames,
    this.relatedUrl,
    this.sbom,
    this.sbomReference,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.vulnerability,
    this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority': ?pulumi.Input.mapOptionalInputValue<Authority, Map<String, dynamic>>(attestationAuthority, (value) => value.toMap()),
      'baseImage': ?pulumi.Input.mapOptionalInputValue<BasisContaineranalysisV1beta1, Map<String, dynamic>>(baseImage, (value) => value.toMap()),
      'build': ?pulumi.Input.mapOptionalInputValue<Build, Map<String, dynamic>>(build, (value) => value.toMap()),
      'deployable': ?pulumi.Input.mapOptionalInputValue<DeployableContaineranalysisV1beta1, Map<String, dynamic>>(deployable, (value) => value.toMap()),
      'discovery': ?pulumi.Input.mapOptionalInputValue<DiscoveryContaineranalysisV1beta1, Map<String, dynamic>>(discovery, (value) => value.toMap()),
      'expirationTime': ?expirationTime,
      'intoto': ?pulumi.Input.mapOptionalInputValue<InToto, Map<String, dynamic>>(intoto, (value) => value.toMap()),
      'longDescription': ?longDescription,
      'noteId': noteId,
      'package': ?pulumi.Input.mapOptionalInputValue<PackageContaineranalysisV1beta1, Map<String, dynamic>>(package, (value) => value.toMap()),
      'project': ?project,
      'relatedNoteNames': ?relatedNoteNames,
      'relatedUrl': ?pulumi.Input.mapOptionalInputValue<List<RelatedUrlContaineranalysisV1beta1>, List<Map<String, dynamic>>>(relatedUrl, (value) => pulumi.Input.encodeList<RelatedUrlContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sbom': ?pulumi.Input.mapOptionalInputValue<DocumentNoteContaineranalysisV1beta1, Map<String, dynamic>>(sbom, (value) => value.toMap()),
      'sbomReference': ?pulumi.Input.mapOptionalInputValue<SBOMReferenceNoteContaineranalysisV1beta1, Map<String, dynamic>>(sbomReference, (value) => value.toMap()),
      'shortDescription': ?shortDescription,
      'spdxFile': ?pulumi.Input.mapOptionalInputValue<FileNoteContaineranalysisV1beta1, Map<String, dynamic>>(spdxFile, (value) => value.toMap()),
      'spdxPackage': ?pulumi.Input.mapOptionalInputValue<PackageInfoNoteContaineranalysisV1beta1, Map<String, dynamic>>(spdxPackage, (value) => value.toMap()),
      'spdxRelationship': ?pulumi.Input.mapOptionalInputValue<RelationshipNoteContaineranalysisV1beta1, Map<String, dynamic>>(spdxRelationship, (value) => value.toMap()),
      'vulnerability': ?pulumi.Input.mapOptionalInputValue<Vulnerability, Map<String, dynamic>>(vulnerability, (value) => value.toMap()),
      'vulnerabilityAssessment': ?pulumi.Input.mapOptionalInputValue<VulnerabilityAssessmentNoteContaineranalysisV1beta1, Map<String, dynamic>>(vulnerabilityAssessment, (value) => value.toMap()),
    };
  }

  factory NoteContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NoteContaineranalysisV1beta1Args(
      attestationAuthority: map['attestationAuthority'] == null ? null : (Authority.fromMap((map['attestationAuthority']! as Map).cast<String, dynamic>())).input(),
      baseImage: map['baseImage'] == null ? null : (BasisContaineranalysisV1beta1.fromMap((map['baseImage']! as Map).cast<String, dynamic>())).input(),
      build: map['build'] == null ? null : (Build.fromMap((map['build']! as Map).cast<String, dynamic>())).input(),
      deployable: map['deployable'] == null ? null : (DeployableContaineranalysisV1beta1.fromMap((map['deployable']! as Map).cast<String, dynamic>())).input(),
      discovery: map['discovery'] == null ? null : (DiscoveryContaineranalysisV1beta1.fromMap((map['discovery']! as Map).cast<String, dynamic>())).input(),
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      intoto: map['intoto'] == null ? null : (InToto.fromMap((map['intoto']! as Map).cast<String, dynamic>())).input(),
      longDescription: map['longDescription'] == null ? null : (map['longDescription']! as String).input(),
      noteId: (map['noteId'] as String).input(),
      package: map['package'] == null ? null : (PackageContaineranalysisV1beta1.fromMap((map['package']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      relatedNoteNames: map['relatedNoteNames'] == null ? null : ((map['relatedNoteNames']! as List).cast<String>()).input(),
      relatedUrl: map['relatedUrl'] == null ? null : (pulumi.Input.decodeList<RelatedUrlContaineranalysisV1beta1>(map['relatedUrl']!, (value) => RelatedUrlContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sbom: map['sbom'] == null ? null : (DocumentNoteContaineranalysisV1beta1.fromMap((map['sbom']! as Map).cast<String, dynamic>())).input(),
      sbomReference: map['sbomReference'] == null ? null : (SBOMReferenceNoteContaineranalysisV1beta1.fromMap((map['sbomReference']! as Map).cast<String, dynamic>())).input(),
      shortDescription: map['shortDescription'] == null ? null : (map['shortDescription']! as String).input(),
      spdxFile: map['spdxFile'] == null ? null : (FileNoteContaineranalysisV1beta1.fromMap((map['spdxFile']! as Map).cast<String, dynamic>())).input(),
      spdxPackage: map['spdxPackage'] == null ? null : (PackageInfoNoteContaineranalysisV1beta1.fromMap((map['spdxPackage']! as Map).cast<String, dynamic>())).input(),
      spdxRelationship: map['spdxRelationship'] == null ? null : (RelationshipNoteContaineranalysisV1beta1.fromMap((map['spdxRelationship']! as Map).cast<String, dynamic>())).input(),
      vulnerability: map['vulnerability'] == null ? null : (Vulnerability.fromMap((map['vulnerability']! as Map).cast<String, dynamic>())).input(),
      vulnerabilityAssessment: map['vulnerabilityAssessment'] == null ? null : (VulnerabilityAssessmentNoteContaineranalysisV1beta1.fromMap((map['vulnerabilityAssessment']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

