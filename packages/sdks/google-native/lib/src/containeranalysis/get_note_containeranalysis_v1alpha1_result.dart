// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_authority_response.dart';
import 'basis_response.dart';
import 'build_type_response.dart';
import 'compliance_note_response_containeranalysis_v1alpha1.dart';
import 'deployable_response.dart';
import 'discovery_response.dart';
import 'document_note_response.dart';
import 'dsseattestation_note_response_containeranalysis_v1alpha1.dart';
import 'file_note_response.dart';
import 'package_info_note_response.dart';
import 'package_response.dart';
import 'related_url_response_containeranalysis_v1alpha1.dart';
import 'relationship_note_response.dart';
import 'sbomreference_note_response_containeranalysis_v1alpha1.dart';
import 'upgrade_note_response_containeranalysis_v1alpha1.dart';
import 'vulnerability_assessment_note_response_containeranalysis_v1alpha1.dart';
import 'vulnerability_type_response.dart';

/// Result data returned by getNote.
class GetNoteContaineranalysisV1alpha1Result {
  /// A note describing an attestation role.
  final AttestationAuthorityResponse? attestationAuthority;
  /// A note describing a base image.
  final BasisResponse? baseImage;
  /// Build provenance type for a verifiable build.
  final BuildTypeResponse? buildType;
  /// A note describing a compliance check.
  final ComplianceNoteResponseContaineranalysisV1alpha1? compliance;
  /// The time this note was created. This field can be used as a filter in list requests.
  final String? createTime;
  /// A note describing something that can be deployed.
  final DeployableResponse? deployable;
  /// A note describing a provider/analysis type.
  final DiscoveryResponse? discovery;
  /// A note describing a dsse attestation note.
  final DSSEAttestationNoteResponseContaineranalysisV1alpha1? dsseAttestation;
  /// Time of expiration for this note, null if note does not expire.
  final String? expirationTime;
  /// This explicitly denotes which kind of note is specified. This field can be used as a filter in list requests.
  final String? kind;
  /// A detailed description of this `Note`.
  final String? longDescription;
  /// The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  final String? name;
  /// A note describing a package hosted by various package managers.
  final PackageResponse? package;
  /// URLs associated with this note
  final List<RelatedUrlResponseContaineranalysisV1alpha1>? relatedUrl;
  /// A note describing a software bill of materials.
  final DocumentNoteResponse? sbom;
  /// A note describing a reference to an SBOM.
  final SBOMReferenceNoteResponseContaineranalysisV1alpha1? sbomReference;
  /// A one sentence description of this `Note`.
  final String? shortDescription;
  /// A note describing an SPDX File.
  final FileNoteResponse? spdxFile;
  /// A note describing an SPDX Package.
  final PackageInfoNoteResponse? spdxPackage;
  /// A note describing a relationship between SPDX elements.
  final RelationshipNoteResponse? spdxRelationship;
  /// The time this note was last updated. This field can be used as a filter in list requests.
  final String? updateTime;
  /// A note describing an upgrade.
  final UpgradeNoteResponseContaineranalysisV1alpha1? upgrade;
  /// A note describing a vulnerability assessment.
  final VulnerabilityAssessmentNoteResponseContaineranalysisV1alpha1? vulnerabilityAssessment;
  /// A package vulnerability type of note.
  final VulnerabilityTypeResponse? vulnerabilityType;

  /// Creates a new [GetNoteContaineranalysisV1alpha1Result].
  /// [attestationAuthority] A note describing an attestation role.
  /// [baseImage] A note describing a base image.
  /// [buildType] Build provenance type for a verifiable build.
  /// [compliance] A note describing a compliance check.
  /// [createTime] The time this note was created. This field can be used as a filter in list requests.
  /// [deployable] A note describing something that can be deployed.
  /// [discovery] A note describing a provider/analysis type.
  /// [dsseAttestation] A note describing a dsse attestation note.
  /// [expirationTime] Time of expiration for this note, null if note does not expire.
  /// [kind] This explicitly denotes which kind of note is specified. This field can be used as a filter in list requests.
  /// [longDescription] A detailed description of this `Note`.
  /// [name] The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  /// [package] A note describing a package hosted by various package managers.
  /// [relatedUrl] URLs associated with this note
  /// [sbom] A note describing a software bill of materials.
  /// [sbomReference] A note describing a reference to an SBOM.
  /// [shortDescription] A one sentence description of this `Note`.
  /// [spdxFile] A note describing an SPDX File.
  /// [spdxPackage] A note describing an SPDX Package.
  /// [spdxRelationship] A note describing a relationship between SPDX elements.
  /// [updateTime] The time this note was last updated. This field can be used as a filter in list requests.
  /// [upgrade] A note describing an upgrade.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  /// [vulnerabilityType] A package vulnerability type of note.
  const GetNoteContaineranalysisV1alpha1Result({
    this.attestationAuthority,
    this.baseImage,
    this.buildType,
    this.compliance,
    this.createTime,
    this.deployable,
    this.discovery,
    this.dsseAttestation,
    this.expirationTime,
    this.kind,
    this.longDescription,
    this.name,
    this.package,
    this.relatedUrl,
    this.sbom,
    this.sbomReference,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.upgrade,
    this.vulnerabilityAssessment,
    this.vulnerabilityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority': ?attestationAuthority?.toMap(),
      'baseImage': ?baseImage?.toMap(),
      'buildType': ?buildType?.toMap(),
      'compliance': ?compliance?.toMap(),
      'createTime': ?createTime,
      'deployable': ?deployable?.toMap(),
      'discovery': ?discovery?.toMap(),
      'dsseAttestation': ?dsseAttestation?.toMap(),
      'expirationTime': ?expirationTime,
      'kind': ?kind,
      'longDescription': ?longDescription,
      'name': ?name,
      'package': ?package?.toMap(),
      'relatedUrl': ?(() { final guardedValue = relatedUrl; if (guardedValue == null) return null; return pulumi.Input.encodeList<RelatedUrlResponseContaineranalysisV1alpha1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sbom': ?sbom?.toMap(),
      'sbomReference': ?sbomReference?.toMap(),
      'shortDescription': ?shortDescription,
      'spdxFile': ?spdxFile?.toMap(),
      'spdxPackage': ?spdxPackage?.toMap(),
      'spdxRelationship': ?spdxRelationship?.toMap(),
      'updateTime': ?updateTime,
      'upgrade': ?upgrade?.toMap(),
      'vulnerabilityAssessment': ?vulnerabilityAssessment?.toMap(),
      'vulnerabilityType': ?vulnerabilityType?.toMap(),
    };
  }

  factory GetNoteContaineranalysisV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetNoteContaineranalysisV1alpha1Result(
      attestationAuthority: (() { final guardedValue = map['attestationAuthority']; if (guardedValue == null) return null; return AttestationAuthorityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      baseImage: (() { final guardedValue = map['baseImage']; if (guardedValue == null) return null; return BasisResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      buildType: (() { final guardedValue = map['buildType']; if (guardedValue == null) return null; return BuildTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return ComplianceNoteResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployable: (() { final guardedValue = map['deployable']; if (guardedValue == null) return null; return DeployableResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return DiscoveryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dsseAttestation: (() { final guardedValue = map['dsseAttestation']; if (guardedValue == null) return null; return DSSEAttestationNoteResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      longDescription: (() { final guardedValue = map['longDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return PackageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      relatedUrl: (() { final guardedValue = map['relatedUrl']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RelatedUrlResponseContaineranalysisV1alpha1>(guardedValue, (value) => RelatedUrlResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>())); })(),
      sbom: (() { final guardedValue = map['sbom']; if (guardedValue == null) return null; return DocumentNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return SBOMReferenceNoteResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spdxFile: (() { final guardedValue = map['spdxFile']; if (guardedValue == null) return null; return FileNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spdxPackage: (() { final guardedValue = map['spdxPackage']; if (guardedValue == null) return null; return PackageInfoNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spdxRelationship: (() { final guardedValue = map['spdxRelationship']; if (guardedValue == null) return null; return RelationshipNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return UpgradeNoteResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerabilityAssessment: (() { final guardedValue = map['vulnerabilityAssessment']; if (guardedValue == null) return null; return VulnerabilityAssessmentNoteResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerabilityType: (() { final guardedValue = map['vulnerabilityType']; if (guardedValue == null) return null; return VulnerabilityTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
