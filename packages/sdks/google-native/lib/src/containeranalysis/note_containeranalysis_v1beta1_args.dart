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
  final pulumi.Input<RelationshipNoteContaineranalysisV1beta1>?
  spdxRelationship;

  /// A note describing a package vulnerability.
  final pulumi.Input<Vulnerability>? vulnerability;

  /// A note describing a vulnerability assessment.
  final pulumi.Input<VulnerabilityAssessmentNoteContaineranalysisV1beta1>?
  vulnerabilityAssessment;

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
      'attestationAuthority':
          ?pulumi.Input.mapOptionalInputValue<Authority, Map<String, dynamic>>(
            attestationAuthority,
            (value) => value.toMap(),
          ),
      'baseImage':
          ?pulumi.Input.mapOptionalInputValue<
            BasisContaineranalysisV1beta1,
            Map<String, dynamic>
          >(baseImage, (value) => value.toMap()),
      'build': ?pulumi.Input.mapOptionalInputValue<Build, Map<String, dynamic>>(
        build,
        (value) => value.toMap(),
      ),
      'deployable':
          ?pulumi.Input.mapOptionalInputValue<
            DeployableContaineranalysisV1beta1,
            Map<String, dynamic>
          >(deployable, (value) => value.toMap()),
      'discovery':
          ?pulumi.Input.mapOptionalInputValue<
            DiscoveryContaineranalysisV1beta1,
            Map<String, dynamic>
          >(discovery, (value) => value.toMap()),
      'expirationTime': ?expirationTime,
      'intoto':
          ?pulumi.Input.mapOptionalInputValue<InToto, Map<String, dynamic>>(
            intoto,
            (value) => value.toMap(),
          ),
      'longDescription': ?longDescription,
      'noteId': noteId,
      'package':
          ?pulumi.Input.mapOptionalInputValue<
            PackageContaineranalysisV1beta1,
            Map<String, dynamic>
          >(package, (value) => value.toMap()),
      'project': ?project,
      'relatedNoteNames': ?relatedNoteNames,
      'relatedUrl':
          ?pulumi.Input.mapOptionalInputValue<
            List<RelatedUrlContaineranalysisV1beta1>,
            List<Map<String, dynamic>>
          >(
            relatedUrl,
            (value) =>
                pulumi.Input.encodeList<
                  RelatedUrlContaineranalysisV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sbom':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentNoteContaineranalysisV1beta1,
            Map<String, dynamic>
          >(sbom, (value) => value.toMap()),
      'sbomReference':
          ?pulumi.Input.mapOptionalInputValue<
            SBOMReferenceNoteContaineranalysisV1beta1,
            Map<String, dynamic>
          >(sbomReference, (value) => value.toMap()),
      'shortDescription': ?shortDescription,
      'spdxFile':
          ?pulumi.Input.mapOptionalInputValue<
            FileNoteContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxFile, (value) => value.toMap()),
      'spdxPackage':
          ?pulumi.Input.mapOptionalInputValue<
            PackageInfoNoteContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxPackage, (value) => value.toMap()),
      'spdxRelationship':
          ?pulumi.Input.mapOptionalInputValue<
            RelationshipNoteContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxRelationship, (value) => value.toMap()),
      'vulnerability':
          ?pulumi.Input.mapOptionalInputValue<
            Vulnerability,
            Map<String, dynamic>
          >(vulnerability, (value) => value.toMap()),
      'vulnerabilityAssessment':
          ?pulumi.Input.mapOptionalInputValue<
            VulnerabilityAssessmentNoteContaineranalysisV1beta1,
            Map<String, dynamic>
          >(vulnerabilityAssessment, (value) => value.toMap()),
    };
  }

  factory NoteContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NoteContaineranalysisV1beta1Args(
      attestationAuthority: (() {
        final guardedValue = map['attestationAuthority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Authority.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      baseImage: (() {
        final guardedValue = map['baseImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasisContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      build: (() {
        final guardedValue = map['build'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Build.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      deployable: (() {
        final guardedValue = map['deployable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeployableContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      discovery: (() {
        final guardedValue = map['discovery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiscoveryContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      expirationTime: (() {
        final guardedValue = map['expirationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intoto: (() {
        final guardedValue = map['intoto'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InToto.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      longDescription: (() {
        final guardedValue = map['longDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      noteId: pulumi.Input.fromValue(map['noteId'] as String),
      package: (() {
        final guardedValue = map['package'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PackageContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      relatedNoteNames: (() {
        final guardedValue = map['relatedNoteNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      relatedUrl: (() {
        final guardedValue = map['relatedUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RelatedUrlContaineranalysisV1beta1>(
            guardedValue,
            (value) => RelatedUrlContaineranalysisV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sbom: (() {
        final guardedValue = map['sbom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DocumentNoteContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sbomReference: (() {
        final guardedValue = map['sbomReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SBOMReferenceNoteContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      shortDescription: (() {
        final guardedValue = map['shortDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spdxFile: (() {
        final guardedValue = map['spdxFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileNoteContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spdxPackage: (() {
        final guardedValue = map['spdxPackage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PackageInfoNoteContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spdxRelationship: (() {
        final guardedValue = map['spdxRelationship'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RelationshipNoteContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vulnerability: (() {
        final guardedValue = map['vulnerability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Vulnerability.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      vulnerabilityAssessment: (() {
        final guardedValue = map['vulnerabilityAssessment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VulnerabilityAssessmentNoteContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
