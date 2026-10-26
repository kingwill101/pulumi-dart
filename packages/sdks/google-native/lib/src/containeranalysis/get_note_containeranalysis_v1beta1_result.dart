// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_response.dart';
import 'basis_response_containeranalysis_v1beta1.dart';
import 'build_response.dart';
import 'deployable_response_containeranalysis_v1beta1.dart';
import 'discovery_response_containeranalysis_v1beta1.dart';
import 'document_note_response_containeranalysis_v1beta1.dart';
import 'file_note_response_containeranalysis_v1beta1.dart';
import 'in_toto_response.dart';
import 'package_info_note_response_containeranalysis_v1beta1.dart';
import 'package_response_containeranalysis_v1beta1.dart';
import 'related_url_response_containeranalysis_v1beta1.dart';
import 'relationship_note_response_containeranalysis_v1beta1.dart';
import 'sbomreference_note_response_containeranalysis_v1beta1.dart';
import 'vulnerability_assessment_note_response_containeranalysis_v1beta1.dart';
import 'vulnerability_response.dart';

/// Result data returned by getNote.
class GetNoteContaineranalysisV1beta1Result {
  /// A note describing an attestation role.
  final AuthorityResponse? attestationAuthority;
  /// A note describing a base image.
  final BasisResponseContaineranalysisV1beta1? baseImage;
  /// A note describing build provenance for a verifiable build.
  final BuildResponse? build;
  /// The time this note was created. This field can be used as a filter in list requests.
  final String? createTime;
  /// A note describing something that can be deployed.
  final DeployableResponseContaineranalysisV1beta1? deployable;
  /// A note describing the initial analysis of a resource.
  final DiscoveryResponseContaineranalysisV1beta1? discovery;
  /// Time of expiration for this note. Empty if note does not expire.
  final String? expirationTime;
  /// A note describing an in-toto link.
  final InTotoResponse? intoto;
  /// The type of analysis. This field can be used as a filter in list requests.
  final String? kind;
  /// A detailed description of this note.
  final String? longDescription;
  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  final String? name;
  /// A note describing a package hosted by various package managers.
  final PackageResponseContaineranalysisV1beta1? package;
  /// Other notes related to this note.
  final List<String>? relatedNoteNames;
  /// URLs associated with this note.
  final List<RelatedUrlResponseContaineranalysisV1beta1>? relatedUrl;
  /// A note describing a software bill of materials.
  final DocumentNoteResponseContaineranalysisV1beta1? sbom;
  /// A note describing an SBOM reference.
  final SBOMReferenceNoteResponseContaineranalysisV1beta1? sbomReference;
  /// A one sentence description of this note.
  final String? shortDescription;
  /// A note describing an SPDX File.
  final FileNoteResponseContaineranalysisV1beta1? spdxFile;
  /// A note describing an SPDX Package.
  final PackageInfoNoteResponseContaineranalysisV1beta1? spdxPackage;
  /// A note describing an SPDX File.
  final RelationshipNoteResponseContaineranalysisV1beta1? spdxRelationship;
  /// The time this note was last updated. This field can be used as a filter in list requests.
  final String? updateTime;
  /// A note describing a package vulnerability.
  final VulnerabilityResponse? vulnerability;
  /// A note describing a vulnerability assessment.
  final VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1? vulnerabilityAssessment;

  /// Creates a new [GetNoteContaineranalysisV1beta1Result].
  /// [attestationAuthority] A note describing an attestation role.
  /// [baseImage] A note describing a base image.
  /// [build] A note describing build provenance for a verifiable build.
  /// [createTime] The time this note was created. This field can be used as a filter in list requests.
  /// [deployable] A note describing something that can be deployed.
  /// [discovery] A note describing the initial analysis of a resource.
  /// [expirationTime] Time of expiration for this note. Empty if note does not expire.
  /// [intoto] A note describing an in-toto link.
  /// [kind] The type of analysis. This field can be used as a filter in list requests.
  /// [longDescription] A detailed description of this note.
  /// [name] The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// [package] A note describing a package hosted by various package managers.
  /// [relatedNoteNames] Other notes related to this note.
  /// [relatedUrl] URLs associated with this note.
  /// [sbom] A note describing a software bill of materials.
  /// [sbomReference] A note describing an SBOM reference.
  /// [shortDescription] A one sentence description of this note.
  /// [spdxFile] A note describing an SPDX File.
  /// [spdxPackage] A note describing an SPDX Package.
  /// [spdxRelationship] A note describing an SPDX File.
  /// [updateTime] The time this note was last updated. This field can be used as a filter in list requests.
  /// [vulnerability] A note describing a package vulnerability.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  const GetNoteContaineranalysisV1beta1Result({
    this.attestationAuthority,
    this.baseImage,
    this.build,
    this.createTime,
    this.deployable,
    this.discovery,
    this.expirationTime,
    this.intoto,
    this.kind,
    this.longDescription,
    this.name,
    this.package,
    this.relatedNoteNames,
    this.relatedUrl,
    this.sbom,
    this.sbomReference,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.vulnerability,
    this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority': ?attestationAuthority?.toMap(),
      'baseImage': ?baseImage?.toMap(),
      'build': ?build?.toMap(),
      'createTime': ?createTime,
      'deployable': ?deployable?.toMap(),
      'discovery': ?discovery?.toMap(),
      'expirationTime': ?expirationTime,
      'intoto': ?intoto?.toMap(),
      'kind': ?kind,
      'longDescription': ?longDescription,
      'name': ?name,
      'package': ?package?.toMap(),
      'relatedNoteNames': ?relatedNoteNames,
      'relatedUrl': ?(() { final guardedValue = relatedUrl; if (guardedValue == null) return null; return pulumi.Input.encodeList<RelatedUrlResponseContaineranalysisV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sbom': ?sbom?.toMap(),
      'sbomReference': ?sbomReference?.toMap(),
      'shortDescription': ?shortDescription,
      'spdxFile': ?spdxFile?.toMap(),
      'spdxPackage': ?spdxPackage?.toMap(),
      'spdxRelationship': ?spdxRelationship?.toMap(),
      'updateTime': ?updateTime,
      'vulnerability': ?vulnerability?.toMap(),
      'vulnerabilityAssessment': ?vulnerabilityAssessment?.toMap(),
    };
  }

  factory GetNoteContaineranalysisV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetNoteContaineranalysisV1beta1Result(
      attestationAuthority: (() { final guardedValue = map['attestationAuthority']; if (guardedValue == null) return null; return AuthorityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      baseImage: (() { final guardedValue = map['baseImage']; if (guardedValue == null) return null; return BasisResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return BuildResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployable: (() { final guardedValue = map['deployable']; if (guardedValue == null) return null; return DeployableResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return DiscoveryResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      intoto: (() { final guardedValue = map['intoto']; if (guardedValue == null) return null; return InTotoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      longDescription: (() { final guardedValue = map['longDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return PackageResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      relatedNoteNames: (() { final guardedValue = map['relatedNoteNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      relatedUrl: (() { final guardedValue = map['relatedUrl']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RelatedUrlResponseContaineranalysisV1beta1>(guardedValue, (value) => RelatedUrlResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      sbom: (() { final guardedValue = map['sbom']; if (guardedValue == null) return null; return DocumentNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return SBOMReferenceNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spdxFile: (() { final guardedValue = map['spdxFile']; if (guardedValue == null) return null; return FileNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spdxPackage: (() { final guardedValue = map['spdxPackage']; if (guardedValue == null) return null; return PackageInfoNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spdxRelationship: (() { final guardedValue = map['spdxRelationship']; if (guardedValue == null) return null; return RelationshipNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vulnerability: (() { final guardedValue = map['vulnerability']; if (guardedValue == null) return null; return VulnerabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerabilityAssessment: (() { final guardedValue = map['vulnerabilityAssessment']; if (guardedValue == null) return null; return VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
