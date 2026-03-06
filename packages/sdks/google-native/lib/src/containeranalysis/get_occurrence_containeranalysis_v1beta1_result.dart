// ignore_for_file: unused_element, unnecessary_cast

import 'details_response.dart';
import 'document_occurrence_response_containeranalysis_v1beta1.dart';
import 'envelope_response_containeranalysis_v1beta1.dart';
import 'file_occurrence_response_containeranalysis_v1beta1.dart';
import 'grafeas_v1beta1_build_details_response.dart';
import 'grafeas_v1beta1_deployment_details_response.dart';
import 'grafeas_v1beta1_discovery_details_response.dart';
import 'grafeas_v1beta1_image_details_response.dart';
import 'grafeas_v1beta1_intoto_details_response.dart';
import 'grafeas_v1beta1_package_details_response.dart';
import 'grafeas_v1beta1_vulnerability_details_response.dart';
import 'package_info_occurrence_response_containeranalysis_v1beta1.dart';
import 'relationship_occurrence_response_containeranalysis_v1beta1.dart';
import 'resource_response_containeranalysis_v1beta1.dart';
import 'sbomreference_occurrence_response_containeranalysis_v1beta1.dart';

/// Result data returned by getOccurrence.
class GetOccurrenceContaineranalysisV1beta1Result {
  /// Describes an attestation of an artifact.
  final DetailsResponse attestation;
  /// Describes a verifiable build.
  final GrafeasV1beta1BuildDetailsResponse build;
  /// The time this occurrence was created.
  final String createTime;
  /// Describes the deployment of an artifact on a runtime.
  final GrafeasV1beta1DeploymentDetailsResponse deployment;
  /// Describes how this resource derives from the basis in the associated note.
  final GrafeasV1beta1ImageDetailsResponse derivedImage;
  /// Describes when a resource was discovered.
  final GrafeasV1beta1DiscoveryDetailsResponse discovered;
  /// https://github.com/secure-systems-lab/dsse
  final EnvelopeResponseContaineranalysisV1beta1 envelope;
  /// Describes the installation of a package on the linked resource.
  final GrafeasV1beta1PackageDetailsResponse installation;
  /// Describes a specific in-toto link.
  final GrafeasV1beta1IntotoDetailsResponse intoto;
  /// This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  final String kind;
  /// The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  final String name;
  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final String noteName;
  /// A description of actions that can be taken to remedy the note.
  final String remediation;
  /// Immutable. The resource for which the occurrence applies.
  final ResourceResponseContaineranalysisV1beta1 resource;
  /// Describes a specific software bill of materials document.
  final DocumentOccurrenceResponseContaineranalysisV1beta1 sbom;
  /// Describes a specific SBOM reference occurrences.
  final SBOMReferenceOccurrenceResponseContaineranalysisV1beta1 sbomReference;
  /// Describes a specific SPDX File.
  final FileOccurrenceResponseContaineranalysisV1beta1 spdxFile;
  /// Describes a specific SPDX Package.
  final PackageInfoOccurrenceResponseContaineranalysisV1beta1 spdxPackage;
  /// Describes a specific SPDX Relationship.
  final RelationshipOccurrenceResponseContaineranalysisV1beta1 spdxRelationship;
  /// The time this occurrence was last updated.
  final String updateTime;
  /// Describes a security vulnerability.
  final GrafeasV1beta1VulnerabilityDetailsResponse vulnerability;

  /// Creates a new [GetOccurrenceContaineranalysisV1beta1Result].
  /// [attestation] Describes an attestation of an artifact.
  /// [build] Describes a verifiable build.
  /// [createTime] The time this occurrence was created.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [derivedImage] Describes how this resource derives from the basis in the associated note.
  /// [discovered] Describes when a resource was discovered.
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [installation] Describes the installation of a package on the linked resource.
  /// [intoto] Describes a specific in-toto link.
  /// [kind] This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  /// [name] The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// [noteName] Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resource] Immutable. The resource for which the occurrence applies.
  /// [sbom] Describes a specific software bill of materials document.
  /// [sbomReference] Describes a specific SBOM reference occurrences.
  /// [spdxFile] Describes a specific SPDX File.
  /// [spdxPackage] Describes a specific SPDX Package.
  /// [spdxRelationship] Describes a specific SPDX Relationship.
  /// [updateTime] The time this occurrence was last updated.
  /// [vulnerability] Describes a security vulnerability.
  const GetOccurrenceContaineranalysisV1beta1Result({
    required this.attestation,
    required this.build,
    required this.createTime,
    required this.deployment,
    required this.derivedImage,
    required this.discovered,
    required this.envelope,
    required this.installation,
    required this.intoto,
    required this.kind,
    required this.name,
    required this.noteName,
    required this.remediation,
    required this.resource,
    required this.sbom,
    required this.sbomReference,
    required this.spdxFile,
    required this.spdxPackage,
    required this.spdxRelationship,
    required this.updateTime,
    required this.vulnerability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': attestation.toMap(),
      'build': build.toMap(),
      'createTime': createTime,
      'deployment': deployment.toMap(),
      'derivedImage': derivedImage.toMap(),
      'discovered': discovered.toMap(),
      'envelope': envelope.toMap(),
      'installation': installation.toMap(),
      'intoto': intoto.toMap(),
      'kind': kind,
      'name': name,
      'noteName': noteName,
      'remediation': remediation,
      'resource': resource.toMap(),
      'sbom': sbom.toMap(),
      'sbomReference': sbomReference.toMap(),
      'spdxFile': spdxFile.toMap(),
      'spdxPackage': spdxPackage.toMap(),
      'spdxRelationship': spdxRelationship.toMap(),
      'updateTime': updateTime,
      'vulnerability': vulnerability.toMap(),
    };
  }

  factory GetOccurrenceContaineranalysisV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceContaineranalysisV1beta1Result(
      attestation: DetailsResponse.fromMap((map['attestation']! as Map).cast<String, dynamic>()),
      build: GrafeasV1beta1BuildDetailsResponse.fromMap((map['build']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployment: GrafeasV1beta1DeploymentDetailsResponse.fromMap((map['deployment']! as Map).cast<String, dynamic>()),
      derivedImage: GrafeasV1beta1ImageDetailsResponse.fromMap((map['derivedImage']! as Map).cast<String, dynamic>()),
      discovered: GrafeasV1beta1DiscoveryDetailsResponse.fromMap((map['discovered']! as Map).cast<String, dynamic>()),
      envelope: EnvelopeResponseContaineranalysisV1beta1.fromMap((map['envelope']! as Map).cast<String, dynamic>()),
      installation: GrafeasV1beta1PackageDetailsResponse.fromMap((map['installation']! as Map).cast<String, dynamic>()),
      intoto: GrafeasV1beta1IntotoDetailsResponse.fromMap((map['intoto']! as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      noteName: map['noteName'] as String,
      remediation: map['remediation'] as String,
      resource: ResourceResponseContaineranalysisV1beta1.fromMap((map['resource']! as Map).cast<String, dynamic>()),
      sbom: DocumentOccurrenceResponseContaineranalysisV1beta1.fromMap((map['sbom']! as Map).cast<String, dynamic>()),
      sbomReference: SBOMReferenceOccurrenceResponseContaineranalysisV1beta1.fromMap((map['sbomReference']! as Map).cast<String, dynamic>()),
      spdxFile: FileOccurrenceResponseContaineranalysisV1beta1.fromMap((map['spdxFile']! as Map).cast<String, dynamic>()),
      spdxPackage: PackageInfoOccurrenceResponseContaineranalysisV1beta1.fromMap((map['spdxPackage']! as Map).cast<String, dynamic>()),
      spdxRelationship: RelationshipOccurrenceResponseContaineranalysisV1beta1.fromMap((map['spdxRelationship']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      vulnerability: GrafeasV1beta1VulnerabilityDetailsResponse.fromMap((map['vulnerability']! as Map).cast<String, dynamic>()),
    );
  }
}

