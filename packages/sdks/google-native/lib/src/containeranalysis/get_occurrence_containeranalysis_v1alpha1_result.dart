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
  final AttestationResponse? attestation;
  /// Build details for a verifiable build.
  final BuildDetailsResponse? buildDetails;
  /// Describes whether or not a resource passes compliance checks.
  final ComplianceOccurrenceResponseContaineranalysisV1alpha1? compliance;
  /// The time this `Occurrence` was created.
  final String? createTime;
  /// Describes the deployment of an artifact on a runtime.
  final DeploymentResponse? deployment;
  /// Describes how this resource derives from the basis in the associated note.
  final DerivedResponse? derivedImage;
  /// Describes the initial scan status for this resource.
  final DiscoveredResponse? discovered;
  /// This represents a DSSE attestation occurrence
  final DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1? dsseAttestation;
  /// https://github.com/secure-systems-lab/dsse
  final EnvelopeResponseContaineranalysisV1alpha1? envelope;
  /// Describes the installation of a package on the linked resource.
  final InstallationResponse? installation;
  /// This explicitly denotes which of the `Occurrence` details are specified. This field can be used as a filter in list requests.
  final String? kind;
  /// The name of the `Occurrence` in the form "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
  final String? name;
  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  final String? noteName;
  /// A description of actions that can be taken to remedy the `Note`
  final String? remediation;
  /// The resource for which the `Occurrence` applies.
  final ResourceResponse? resource;
  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  final String? resourceUrl;
  /// Describes a specific software bill of materials document.
  final DocumentOccurrenceResponse? sbom;
  /// This represents an SBOM reference occurrence
  final SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1? sbomReference;
  /// Describes a specific SPDX File.
  final FileOccurrenceResponse? spdxFile;
  /// Describes a specific SPDX Package.
  final PackageInfoOccurrenceResponse? spdxPackage;
  /// Describes a specific relationship between SPDX elements.
  final RelationshipOccurrenceResponse? spdxRelationship;
  /// The time this `Occurrence` was last updated.
  final String? updateTime;
  /// Describes an upgrade.
  final UpgradeOccurrenceResponseContaineranalysisV1alpha1? upgrade;
  /// Details of a security vulnerability note.
  final VulnerabilityDetailsResponse? vulnerabilityDetails;

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
    this.attestation,
    this.buildDetails,
    this.compliance,
    this.createTime,
    this.deployment,
    this.derivedImage,
    this.discovered,
    this.dsseAttestation,
    this.envelope,
    this.installation,
    this.kind,
    this.name,
    this.noteName,
    this.remediation,
    this.resource,
    this.resourceUrl,
    this.sbom,
    this.sbomReference,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.upgrade,
    this.vulnerabilityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?attestation?.toMap(),
      'buildDetails': ?buildDetails?.toMap(),
      'compliance': ?compliance?.toMap(),
      'createTime': ?createTime,
      'deployment': ?deployment?.toMap(),
      'derivedImage': ?derivedImage?.toMap(),
      'discovered': ?discovered?.toMap(),
      'dsseAttestation': ?dsseAttestation?.toMap(),
      'envelope': ?envelope?.toMap(),
      'installation': ?installation?.toMap(),
      'kind': ?kind,
      'name': ?name,
      'noteName': ?noteName,
      'remediation': ?remediation,
      'resource': ?resource?.toMap(),
      'resourceUrl': ?resourceUrl,
      'sbom': ?sbom?.toMap(),
      'sbomReference': ?sbomReference?.toMap(),
      'spdxFile': ?spdxFile?.toMap(),
      'spdxPackage': ?spdxPackage?.toMap(),
      'spdxRelationship': ?spdxRelationship?.toMap(),
      'updateTime': ?updateTime,
      'upgrade': ?upgrade?.toMap(),
      'vulnerabilityDetails': ?vulnerabilityDetails?.toMap(),
    };
  }

  factory GetOccurrenceContaineranalysisV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceContaineranalysisV1alpha1Result(
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return AttestationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      buildDetails: (() { final guardedValue = map['buildDetails']; if (guardedValue == null) return null; return BuildDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return ComplianceOccurrenceResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return DeploymentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      derivedImage: (() { final guardedValue = map['derivedImage']; if (guardedValue == null) return null; return DerivedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      discovered: (() { final guardedValue = map['discovered']; if (guardedValue == null) return null; return DiscoveredResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dsseAttestation: (() { final guardedValue = map['dsseAttestation']; if (guardedValue == null) return null; return DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      envelope: (() { final guardedValue = map['envelope']; if (guardedValue == null) return null; return EnvelopeResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      installation: (() { final guardedValue = map['installation']; if (guardedValue == null) return null; return InstallationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noteName: (() { final guardedValue = map['noteName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remediation: (() { final guardedValue = map['remediation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return ResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceUrl: (() { final guardedValue = map['resourceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sbom: (() { final guardedValue = map['sbom']; if (guardedValue == null) return null; return DocumentOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spdxFile: (() { final guardedValue = map['spdxFile']; if (guardedValue == null) return null; return FileOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spdxPackage: (() { final guardedValue = map['spdxPackage']; if (guardedValue == null) return null; return PackageInfoOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spdxRelationship: (() { final guardedValue = map['spdxRelationship']; if (guardedValue == null) return null; return RelationshipOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return UpgradeOccurrenceResponseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerabilityDetails: (() { final guardedValue = map['vulnerabilityDetails']; if (guardedValue == null) return null; return VulnerabilityDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
