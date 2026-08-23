// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_response.dart';
import 'build_details_response.dart';
import 'compliance_occurrence_response_containeranalysis_v1alpha1.dart';
import 'deployment_response.dart';
import 'derived_response.dart';
import 'discovered_response.dart';
import 'document_occurrence_response.dart';
import 'dsseattestation_occurrence_response_containeranalysis_v1alpha1.dart';
import 'envelope_response_containeranalysis_v1alpha1.dart';
import 'file_occurrence_response.dart';
import 'installation_response.dart';
import 'package_info_occurrence_response.dart';
import 'relationship_occurrence_response.dart';
import 'resource_response.dart';
import 'sbomreference_occurrence_response_containeranalysis_v1alpha1.dart';
import 'upgrade_occurrence_response_containeranalysis_v1alpha1.dart';
import 'vulnerability_details_response.dart';

/// Result data returned by getOccurrence.
class GetOccurrenceContaineranalysisV1alpha1Result {
  /// Describes an attestation of an artifact.
  final AttestationResponse attestation;
  /// Build details for a verifiable build.
  final BuildDetailsResponse buildDetails;
  /// Describes whether or not a resource passes compliance checks.
  final ComplianceOccurrenceResponseContaineranalysisV1alpha1 compliance;
  /// The time this `Occurrence` was created.
  final String createTime;
  /// Describes the deployment of an artifact on a runtime.
  final DeploymentResponse deployment;
  /// Describes how this resource derives from the basis in the associated note.
  final DerivedResponse derivedImage;
  /// Describes the initial scan status for this resource.
  final DiscoveredResponse discovered;
  /// This represents a DSSE attestation occurrence
  final DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1 dsseAttestation;
  /// https://github.com/secure-systems-lab/dsse
  final EnvelopeResponseContaineranalysisV1alpha1 envelope;
  /// Describes the installation of a package on the linked resource.
  final InstallationResponse installation;
  /// This explicitly denotes which of the `Occurrence` details are specified. This field can be used as a filter in list requests.
  final String kind;
  /// The name of the `Occurrence` in the form "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
  final String name;
  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  final String noteName;
  /// A description of actions that can be taken to remedy the `Note`
  final String remediation;
  /// The resource for which the `Occurrence` applies.
  final ResourceResponse resource;
  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  final String resourceUrl;
  /// Describes a specific software bill of materials document.
  final DocumentOccurrenceResponse sbom;
  /// This represents an SBOM reference occurrence
  final SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1 sbomReference;
  /// Describes a specific SPDX File.
  final FileOccurrenceResponse spdxFile;
  /// Describes a specific SPDX Package.
  final PackageInfoOccurrenceResponse spdxPackage;
  /// Describes a specific relationship between SPDX elements.
  final RelationshipOccurrenceResponse spdxRelationship;
  /// The time this `Occurrence` was last updated.
  final String updateTime;
  /// Describes an upgrade.
  final UpgradeOccurrenceResponseContaineranalysisV1alpha1 upgrade;
  /// Details of a security vulnerability note.
  final VulnerabilityDetailsResponse vulnerabilityDetails;

  /// Creates a new [GetOccurrenceContaineranalysisV1alpha1Result].
  /// [attestation] Describes an attestation of an artifact.
  /// [buildDetails] Build details for a verifiable build.
  /// [compliance] Describes whether or not a resource passes compliance checks.
  /// [createTime] The time this `Occurrence` was created.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [derivedImage] Describes how this resource derives from the basis in the associated note.
  /// [discovered] Describes the initial scan status for this resource.
  /// [dsseAttestation] This represents a DSSE attestation occurrence
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [installation] Describes the installation of a package on the linked resource.
  /// [kind] This explicitly denotes which of the `Occurrence` details are specified. This field can be used as a filter in list requests.
  /// [name] The name of the `Occurrence` in the form "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
  /// [noteName] An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  /// [remediation] A description of actions that can be taken to remedy the `Note`
  /// [resource] The resource for which the `Occurrence` applies.
  /// [resourceUrl] The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  /// [sbom] Describes a specific software bill of materials document.
  /// [sbomReference] This represents an SBOM reference occurrence
  /// [spdxFile] Describes a specific SPDX File.
  /// [spdxPackage] Describes a specific SPDX Package.
  /// [spdxRelationship] Describes a specific relationship between SPDX elements.
  /// [updateTime] The time this `Occurrence` was last updated.
  /// [upgrade] Describes an upgrade.
  /// [vulnerabilityDetails] Details of a security vulnerability note.
  const GetOccurrenceContaineranalysisV1alpha1Result({
    required this.attestation,
    required this.buildDetails,
    required this.compliance,
    required this.createTime,
    required this.deployment,
    required this.derivedImage,
    required this.discovered,
    required this.dsseAttestation,
    required this.envelope,
    required this.installation,
    required this.kind,
    required this.name,
    required this.noteName,
    required this.remediation,
    required this.resource,
    required this.resourceUrl,
    required this.sbom,
    required this.sbomReference,
    required this.spdxFile,
    required this.spdxPackage,
    required this.spdxRelationship,
    required this.updateTime,
    required this.upgrade,
    required this.vulnerabilityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': attestation.toMap(),
      'buildDetails': buildDetails.toMap(),
      'compliance': compliance.toMap(),
      'createTime': createTime,
      'deployment': deployment.toMap(),
      'derivedImage': derivedImage.toMap(),
      'discovered': discovered.toMap(),
      'dsseAttestation': dsseAttestation.toMap(),
      'envelope': envelope.toMap(),
      'installation': installation.toMap(),
      'kind': kind,
      'name': name,
      'noteName': noteName,
      'remediation': remediation,
      'resource': resource.toMap(),
      'resourceUrl': resourceUrl,
      'sbom': sbom.toMap(),
      'sbomReference': sbomReference.toMap(),
      'spdxFile': spdxFile.toMap(),
      'spdxPackage': spdxPackage.toMap(),
      'spdxRelationship': spdxRelationship.toMap(),
      'updateTime': updateTime,
      'upgrade': upgrade.toMap(),
      'vulnerabilityDetails': vulnerabilityDetails.toMap(),
    };
  }

  factory GetOccurrenceContaineranalysisV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceContaineranalysisV1alpha1Result(
      attestation: AttestationResponse.fromMap((map['attestation']! as Map).cast<String, dynamic>()),
      buildDetails: BuildDetailsResponse.fromMap((map['buildDetails']! as Map).cast<String, dynamic>()),
      compliance: ComplianceOccurrenceResponseContaineranalysisV1alpha1.fromMap((map['compliance']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployment: DeploymentResponse.fromMap((map['deployment']! as Map).cast<String, dynamic>()),
      derivedImage: DerivedResponse.fromMap((map['derivedImage']! as Map).cast<String, dynamic>()),
      discovered: DiscoveredResponse.fromMap((map['discovered']! as Map).cast<String, dynamic>()),
      dsseAttestation: DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1.fromMap((map['dsseAttestation']! as Map).cast<String, dynamic>()),
      envelope: EnvelopeResponseContaineranalysisV1alpha1.fromMap((map['envelope']! as Map).cast<String, dynamic>()),
      installation: InstallationResponse.fromMap((map['installation']! as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      noteName: map['noteName'] as String,
      remediation: map['remediation'] as String,
      resource: ResourceResponse.fromMap((map['resource']! as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
      sbom: DocumentOccurrenceResponse.fromMap((map['sbom']! as Map).cast<String, dynamic>()),
      sbomReference: SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1.fromMap((map['sbomReference']! as Map).cast<String, dynamic>()),
      spdxFile: FileOccurrenceResponse.fromMap((map['spdxFile']! as Map).cast<String, dynamic>()),
      spdxPackage: PackageInfoOccurrenceResponse.fromMap((map['spdxPackage']! as Map).cast<String, dynamic>()),
      spdxRelationship: RelationshipOccurrenceResponse.fromMap((map['spdxRelationship']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      upgrade: UpgradeOccurrenceResponseContaineranalysisV1alpha1.fromMap((map['upgrade']! as Map).cast<String, dynamic>()),
      vulnerabilityDetails: VulnerabilityDetailsResponse.fromMap((map['vulnerabilityDetails']! as Map).cast<String, dynamic>()),
    );
  }
}
