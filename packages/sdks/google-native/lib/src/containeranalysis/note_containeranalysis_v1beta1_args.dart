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
    pulumi.Output<Authority>? attestationAuthority,
    pulumi.Output<BasisContaineranalysisV1beta1>? baseImage,
    pulumi.Output<Build>? build,
    pulumi.Output<DeployableContaineranalysisV1beta1>? deployable,
    pulumi.Output<DiscoveryContaineranalysisV1beta1>? discovery,
    pulumi.Output<String>? expirationTime,
    pulumi.Output<InToto>? intoto,
    pulumi.Output<String>? longDescription,
    required pulumi.Output<String> noteId,
    pulumi.Output<PackageContaineranalysisV1beta1>? package,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? relatedNoteNames,
    pulumi.Output<List<RelatedUrlContaineranalysisV1beta1>>? relatedUrl,
    pulumi.Output<DocumentNoteContaineranalysisV1beta1>? sbom,
    pulumi.Output<SBOMReferenceNoteContaineranalysisV1beta1>? sbomReference,
    pulumi.Output<String>? shortDescription,
    pulumi.Output<FileNoteContaineranalysisV1beta1>? spdxFile,
    pulumi.Output<PackageInfoNoteContaineranalysisV1beta1>? spdxPackage,
    pulumi.Output<RelationshipNoteContaineranalysisV1beta1>? spdxRelationship,
    pulumi.Output<Vulnerability>? vulnerability,
    pulumi.Output<VulnerabilityAssessmentNoteContaineranalysisV1beta1>? vulnerabilityAssessment,
  }) :
      attestationAuthority = pulumi.Input.asOptionalInput<Authority>(attestationAuthority),
      baseImage = pulumi.Input.asOptionalInput<BasisContaineranalysisV1beta1>(baseImage),
      build = pulumi.Input.asOptionalInput<Build>(build),
      deployable = pulumi.Input.asOptionalInput<DeployableContaineranalysisV1beta1>(deployable),
      discovery = pulumi.Input.asOptionalInput<DiscoveryContaineranalysisV1beta1>(discovery),
      expirationTime = pulumi.Input.asOptionalInput<String>(expirationTime),
      intoto = pulumi.Input.asOptionalInput<InToto>(intoto),
      longDescription = pulumi.Input.asOptionalInput<String>(longDescription),
      noteId = pulumi.Input.asInput<String>(noteId),
      package = pulumi.Input.asOptionalInput<PackageContaineranalysisV1beta1>(package),
      project = pulumi.Input.asOptionalInput<String>(project),
      relatedNoteNames = pulumi.Input.asOptionalInput<List<String>>(relatedNoteNames),
      relatedUrl = pulumi.Input.asOptionalInput<List<RelatedUrlContaineranalysisV1beta1>>(relatedUrl),
      sbom = pulumi.Input.asOptionalInput<DocumentNoteContaineranalysisV1beta1>(sbom),
      sbomReference = pulumi.Input.asOptionalInput<SBOMReferenceNoteContaineranalysisV1beta1>(sbomReference),
      shortDescription = pulumi.Input.asOptionalInput<String>(shortDescription),
      spdxFile = pulumi.Input.asOptionalInput<FileNoteContaineranalysisV1beta1>(spdxFile),
      spdxPackage = pulumi.Input.asOptionalInput<PackageInfoNoteContaineranalysisV1beta1>(spdxPackage),
      spdxRelationship = pulumi.Input.asOptionalInput<RelationshipNoteContaineranalysisV1beta1>(spdxRelationship),
      vulnerability = pulumi.Input.asOptionalInput<Vulnerability>(vulnerability),
      vulnerabilityAssessment = pulumi.Input.asOptionalInput<VulnerabilityAssessmentNoteContaineranalysisV1beta1>(vulnerabilityAssessment);

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
      attestationAuthority: map['attestationAuthority'] == null ? null : pulumi.Output.create<Authority>(Authority.fromMap((map['attestationAuthority'] as Map).cast<String, dynamic>())),
      baseImage: map['baseImage'] == null ? null : pulumi.Output.create<BasisContaineranalysisV1beta1>(BasisContaineranalysisV1beta1.fromMap((map['baseImage'] as Map).cast<String, dynamic>())),
      build: map['build'] == null ? null : pulumi.Output.create<Build>(Build.fromMap((map['build'] as Map).cast<String, dynamic>())),
      deployable: map['deployable'] == null ? null : pulumi.Output.create<DeployableContaineranalysisV1beta1>(DeployableContaineranalysisV1beta1.fromMap((map['deployable'] as Map).cast<String, dynamic>())),
      discovery: map['discovery'] == null ? null : pulumi.Output.create<DiscoveryContaineranalysisV1beta1>(DiscoveryContaineranalysisV1beta1.fromMap((map['discovery'] as Map).cast<String, dynamic>())),
      expirationTime: map['expirationTime'] == null ? null : pulumi.Output.create<String>(map['expirationTime'] as String),
      intoto: map['intoto'] == null ? null : pulumi.Output.create<InToto>(InToto.fromMap((map['intoto'] as Map).cast<String, dynamic>())),
      longDescription: map['longDescription'] == null ? null : pulumi.Output.create<String>(map['longDescription'] as String),
      noteId: pulumi.Output.create<String>(map['noteId'] as String),
      package: map['package'] == null ? null : pulumi.Output.create<PackageContaineranalysisV1beta1>(PackageContaineranalysisV1beta1.fromMap((map['package'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      relatedNoteNames: map['relatedNoteNames'] == null ? null : pulumi.Output.create<List<String>>((map['relatedNoteNames'] as List).cast<String>()),
      relatedUrl: map['relatedUrl'] == null ? null : pulumi.Output.create<List<RelatedUrlContaineranalysisV1beta1>>(pulumi.Input.decodeList<RelatedUrlContaineranalysisV1beta1>(map['relatedUrl'], (value) => RelatedUrlContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      sbom: map['sbom'] == null ? null : pulumi.Output.create<DocumentNoteContaineranalysisV1beta1>(DocumentNoteContaineranalysisV1beta1.fromMap((map['sbom'] as Map).cast<String, dynamic>())),
      sbomReference: map['sbomReference'] == null ? null : pulumi.Output.create<SBOMReferenceNoteContaineranalysisV1beta1>(SBOMReferenceNoteContaineranalysisV1beta1.fromMap((map['sbomReference'] as Map).cast<String, dynamic>())),
      shortDescription: map['shortDescription'] == null ? null : pulumi.Output.create<String>(map['shortDescription'] as String),
      spdxFile: map['spdxFile'] == null ? null : pulumi.Output.create<FileNoteContaineranalysisV1beta1>(FileNoteContaineranalysisV1beta1.fromMap((map['spdxFile'] as Map).cast<String, dynamic>())),
      spdxPackage: map['spdxPackage'] == null ? null : pulumi.Output.create<PackageInfoNoteContaineranalysisV1beta1>(PackageInfoNoteContaineranalysisV1beta1.fromMap((map['spdxPackage'] as Map).cast<String, dynamic>())),
      spdxRelationship: map['spdxRelationship'] == null ? null : pulumi.Output.create<RelationshipNoteContaineranalysisV1beta1>(RelationshipNoteContaineranalysisV1beta1.fromMap((map['spdxRelationship'] as Map).cast<String, dynamic>())),
      vulnerability: map['vulnerability'] == null ? null : pulumi.Output.create<Vulnerability>(Vulnerability.fromMap((map['vulnerability'] as Map).cast<String, dynamic>())),
      vulnerabilityAssessment: map['vulnerabilityAssessment'] == null ? null : pulumi.Output.create<VulnerabilityAssessmentNoteContaineranalysisV1beta1>(VulnerabilityAssessmentNoteContaineranalysisV1beta1.fromMap((map['vulnerabilityAssessment'] as Map).cast<String, dynamic>())),
    );
  }
}

