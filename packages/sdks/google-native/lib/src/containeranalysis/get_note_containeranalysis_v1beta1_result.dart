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
  final AuthorityResponse attestationAuthority;
  /// A note describing a base image.
  final BasisResponseContaineranalysisV1beta1 baseImage;
  /// A note describing build provenance for a verifiable build.
  final BuildResponse build;
  /// The time this note was created. This field can be used as a filter in list requests.
  final String createTime;
  /// A note describing something that can be deployed.
  final DeployableResponseContaineranalysisV1beta1 deployable;
  /// A note describing the initial analysis of a resource.
  final DiscoveryResponseContaineranalysisV1beta1 discovery;
  /// Time of expiration for this note. Empty if note does not expire.
  final String expirationTime;
  /// A note describing an in-toto link.
  final InTotoResponse intoto;
  /// The type of analysis. This field can be used as a filter in list requests.
  final String kind;
  /// A detailed description of this note.
  final String longDescription;
  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  final String name;
  /// A note describing a package hosted by various package managers.
  final PackageResponseContaineranalysisV1beta1 package;
  /// Other notes related to this note.
  final List<String> relatedNoteNames;
  /// URLs associated with this note.
  final List<RelatedUrlResponseContaineranalysisV1beta1> relatedUrl;
  /// A note describing a software bill of materials.
  final DocumentNoteResponseContaineranalysisV1beta1 sbom;
  /// A note describing an SBOM reference.
  final SBOMReferenceNoteResponseContaineranalysisV1beta1 sbomReference;
  /// A one sentence description of this note.
  final String shortDescription;
  /// A note describing an SPDX File.
  final FileNoteResponseContaineranalysisV1beta1 spdxFile;
  /// A note describing an SPDX Package.
  final PackageInfoNoteResponseContaineranalysisV1beta1 spdxPackage;
  /// A note describing an SPDX File.
  final RelationshipNoteResponseContaineranalysisV1beta1 spdxRelationship;
  /// The time this note was last updated. This field can be used as a filter in list requests.
  final String updateTime;
  /// A note describing a package vulnerability.
  final VulnerabilityResponse vulnerability;
  /// A note describing a vulnerability assessment.
  final VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1 vulnerabilityAssessment;

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
  GetNoteContaineranalysisV1beta1Result({
    required this.attestationAuthority,
    required this.baseImage,
    required this.build,
    required this.createTime,
    required this.deployable,
    required this.discovery,
    required this.expirationTime,
    required this.intoto,
    required this.kind,
    required this.longDescription,
    required this.name,
    required this.package,
    required this.relatedNoteNames,
    required this.relatedUrl,
    required this.sbom,
    required this.sbomReference,
    required this.shortDescription,
    required this.spdxFile,
    required this.spdxPackage,
    required this.spdxRelationship,
    required this.updateTime,
    required this.vulnerability,
    required this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority': attestationAuthority.toMap(),
      'baseImage': baseImage.toMap(),
      'build': build.toMap(),
      'createTime': createTime,
      'deployable': deployable.toMap(),
      'discovery': discovery.toMap(),
      'expirationTime': expirationTime,
      'intoto': intoto.toMap(),
      'kind': kind,
      'longDescription': longDescription,
      'name': name,
      'package': package.toMap(),
      'relatedNoteNames': relatedNoteNames,
      'relatedUrl': pulumi.Input.encodeList<RelatedUrlResponseContaineranalysisV1beta1, Map<String, dynamic>>(relatedUrl, (value) => value.toMap()),
      'sbom': sbom.toMap(),
      'sbomReference': sbomReference.toMap(),
      'shortDescription': shortDescription,
      'spdxFile': spdxFile.toMap(),
      'spdxPackage': spdxPackage.toMap(),
      'spdxRelationship': spdxRelationship.toMap(),
      'updateTime': updateTime,
      'vulnerability': vulnerability.toMap(),
      'vulnerabilityAssessment': vulnerabilityAssessment.toMap(),
    };
  }

  factory GetNoteContaineranalysisV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetNoteContaineranalysisV1beta1Result(
      attestationAuthority: AuthorityResponse.fromMap((map['attestationAuthority'] as Map).cast<String, dynamic>()),
      baseImage: BasisResponseContaineranalysisV1beta1.fromMap((map['baseImage'] as Map).cast<String, dynamic>()),
      build: BuildResponse.fromMap((map['build'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployable: DeployableResponseContaineranalysisV1beta1.fromMap((map['deployable'] as Map).cast<String, dynamic>()),
      discovery: DiscoveryResponseContaineranalysisV1beta1.fromMap((map['discovery'] as Map).cast<String, dynamic>()),
      expirationTime: map['expirationTime'] as String,
      intoto: InTotoResponse.fromMap((map['intoto'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      longDescription: map['longDescription'] as String,
      name: map['name'] as String,
      package: PackageResponseContaineranalysisV1beta1.fromMap((map['package'] as Map).cast<String, dynamic>()),
      relatedNoteNames: (map['relatedNoteNames'] as List).cast<String>(),
      relatedUrl: pulumi.Input.decodeList<RelatedUrlResponseContaineranalysisV1beta1>(map['relatedUrl'], (value) => RelatedUrlResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      sbom: DocumentNoteResponseContaineranalysisV1beta1.fromMap((map['sbom'] as Map).cast<String, dynamic>()),
      sbomReference: SBOMReferenceNoteResponseContaineranalysisV1beta1.fromMap((map['sbomReference'] as Map).cast<String, dynamic>()),
      shortDescription: map['shortDescription'] as String,
      spdxFile: FileNoteResponseContaineranalysisV1beta1.fromMap((map['spdxFile'] as Map).cast<String, dynamic>()),
      spdxPackage: PackageInfoNoteResponseContaineranalysisV1beta1.fromMap((map['spdxPackage'] as Map).cast<String, dynamic>()),
      spdxRelationship: RelationshipNoteResponseContaineranalysisV1beta1.fromMap((map['spdxRelationship'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      vulnerability: VulnerabilityResponse.fromMap((map['vulnerability'] as Map).cast<String, dynamic>()),
      vulnerabilityAssessment: VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1.fromMap((map['vulnerabilityAssessment'] as Map).cast<String, dynamic>()),
    );
  }
}

