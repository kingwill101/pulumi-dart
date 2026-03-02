// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation.dart';
import 'build_details.dart';
import 'compliance_occurrence_containeranalysis_v1alpha1.dart';
import 'deployment_type.dart';
import 'derived.dart';
import 'discovered.dart';
import 'document_occurrence.dart';
import 'dsseattestation_occurrence_containeranalysis_v1alpha1.dart';
import 'envelope_containeranalysis_v1alpha1.dart';
import 'file_occurrence.dart';
import 'installation.dart';
import 'package_info_occurrence.dart';
import 'relationship_occurrence.dart';
import 'resource_type.dart';
import 'sbomreference_occurrence_containeranalysis_v1alpha1.dart';
import 'upgrade_occurrence_containeranalysis_v1alpha1.dart';
import 'vulnerability_details.dart';

/// {@template pulumi_containeranalysis_v1alpha1_occurrence_containeranalysis_v1alpha1_args_doc}
/// The set of arguments for Occurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_occurrence_containeranalysis_v1alpha1_args_doc}
class OccurrenceContaineranalysisV1alpha1Args {
  /// Describes an attestation of an artifact.
  final pulumi.Input<Attestation>? attestation;
  /// Build details for a verifiable build.
  final pulumi.Input<BuildDetails>? buildDetails;
  /// Describes whether or not a resource passes compliance checks.
  final pulumi.Input<ComplianceOccurrenceContaineranalysisV1alpha1>? compliance;
  /// Describes the deployment of an artifact on a runtime.
  final pulumi.Input<DeploymentType>? deployment;
  /// Describes how this resource derives from the basis in the associated note.
  final pulumi.Input<Derived>? derivedImage;
  /// Describes the initial scan status for this resource.
  final pulumi.Input<Discovered>? discovered;
  /// This represents a DSSE attestation occurrence
  final pulumi.Input<DSSEAttestationOccurrenceContaineranalysisV1alpha1>? dsseAttestation;
  /// https://github.com/secure-systems-lab/dsse
  final pulumi.Input<EnvelopeContaineranalysisV1alpha1>? envelope;
  /// Describes the installation of a package on the linked resource.
  final pulumi.Input<Installation>? installation;
  /// The name of the project. Should be of the form "projects/{project_id}". @Deprecated
  final pulumi.Input<String>? name;
  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  final pulumi.Input<String>? noteName;
  final pulumi.Input<String>? project;
  /// A description of actions that can be taken to remedy the `Note`
  final pulumi.Input<String>? remediation;
  /// The resource for which the `Occurrence` applies.
  final pulumi.Input<ResourceType>? resource;
  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  final pulumi.Input<String>? resourceUrl;
  /// Describes a specific software bill of materials document.
  final pulumi.Input<DocumentOccurrence>? sbom;
  /// This represents an SBOM reference occurrence
  final pulumi.Input<SBOMReferenceOccurrenceContaineranalysisV1alpha1>? sbomReference;
  /// Describes a specific SPDX File.
  final pulumi.Input<FileOccurrence>? spdxFile;
  /// Describes a specific SPDX Package.
  final pulumi.Input<PackageInfoOccurrence>? spdxPackage;
  /// Describes a specific relationship between SPDX elements.
  final pulumi.Input<RelationshipOccurrence>? spdxRelationship;
  /// Describes an upgrade.
  final pulumi.Input<UpgradeOccurrenceContaineranalysisV1alpha1>? upgrade;
  /// Details of a security vulnerability note.
  final pulumi.Input<VulnerabilityDetails>? vulnerabilityDetails;

  /// Creates a new [OccurrenceContaineranalysisV1alpha1Args].
  /// [attestation] Describes an attestation of an artifact.
  /// [buildDetails] Build details for a verifiable build.
  /// [compliance] Describes whether or not a resource passes compliance checks.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [derivedImage] Describes how this resource derives from the basis in the associated note.
  /// [discovered] Describes the initial scan status for this resource.
  /// [dsseAttestation] This represents a DSSE attestation occurrence
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [installation] Describes the installation of a package on the linked resource.
  /// [name] The name of the project. Should be of the form "projects/{project_id}". @Deprecated
  /// [noteName] An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  /// [project] Optional.
  /// [remediation] A description of actions that can be taken to remedy the `Note`
  /// [resource] The resource for which the `Occurrence` applies.
  /// [resourceUrl] The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  /// [sbom] Describes a specific software bill of materials document.
  /// [sbomReference] This represents an SBOM reference occurrence
  /// [spdxFile] Describes a specific SPDX File.
  /// [spdxPackage] Describes a specific SPDX Package.
  /// [spdxRelationship] Describes a specific relationship between SPDX elements.
  /// [upgrade] Describes an upgrade.
  /// [vulnerabilityDetails] Details of a security vulnerability note.
  OccurrenceContaineranalysisV1alpha1Args({
    this.attestation,
    this.buildDetails,
    this.compliance,
    this.deployment,
    this.derivedImage,
    this.discovered,
    this.dsseAttestation,
    this.envelope,
    this.installation,
    this.name,
    this.noteName,
    this.project,
    this.remediation,
    this.resource,
    this.resourceUrl,
    this.sbom,
    this.sbomReference,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.upgrade,
    this.vulnerabilityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?pulumi.Input.mapOptionalInputValue<Attestation, Map<String, dynamic>>(attestation, (value) => value.toMap()),
      'buildDetails': ?pulumi.Input.mapOptionalInputValue<BuildDetails, Map<String, dynamic>>(buildDetails, (value) => value.toMap()),
      'compliance': ?pulumi.Input.mapOptionalInputValue<ComplianceOccurrenceContaineranalysisV1alpha1, Map<String, dynamic>>(compliance, (value) => value.toMap()),
      'deployment': ?pulumi.Input.mapOptionalInputValue<DeploymentType, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'derivedImage': ?pulumi.Input.mapOptionalInputValue<Derived, Map<String, dynamic>>(derivedImage, (value) => value.toMap()),
      'discovered': ?pulumi.Input.mapOptionalInputValue<Discovered, Map<String, dynamic>>(discovered, (value) => value.toMap()),
      'dsseAttestation': ?pulumi.Input.mapOptionalInputValue<DSSEAttestationOccurrenceContaineranalysisV1alpha1, Map<String, dynamic>>(dsseAttestation, (value) => value.toMap()),
      'envelope': ?pulumi.Input.mapOptionalInputValue<EnvelopeContaineranalysisV1alpha1, Map<String, dynamic>>(envelope, (value) => value.toMap()),
      'installation': ?pulumi.Input.mapOptionalInputValue<Installation, Map<String, dynamic>>(installation, (value) => value.toMap()),
      'name': ?name,
      'noteName': ?noteName,
      'project': ?project,
      'remediation': ?remediation,
      'resource': ?pulumi.Input.mapOptionalInputValue<ResourceType, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceUrl': ?resourceUrl,
      'sbom': ?pulumi.Input.mapOptionalInputValue<DocumentOccurrence, Map<String, dynamic>>(sbom, (value) => value.toMap()),
      'sbomReference': ?pulumi.Input.mapOptionalInputValue<SBOMReferenceOccurrenceContaineranalysisV1alpha1, Map<String, dynamic>>(sbomReference, (value) => value.toMap()),
      'spdxFile': ?pulumi.Input.mapOptionalInputValue<FileOccurrence, Map<String, dynamic>>(spdxFile, (value) => value.toMap()),
      'spdxPackage': ?pulumi.Input.mapOptionalInputValue<PackageInfoOccurrence, Map<String, dynamic>>(spdxPackage, (value) => value.toMap()),
      'spdxRelationship': ?pulumi.Input.mapOptionalInputValue<RelationshipOccurrence, Map<String, dynamic>>(spdxRelationship, (value) => value.toMap()),
      'upgrade': ?pulumi.Input.mapOptionalInputValue<UpgradeOccurrenceContaineranalysisV1alpha1, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
      'vulnerabilityDetails': ?pulumi.Input.mapOptionalInputValue<VulnerabilityDetails, Map<String, dynamic>>(vulnerabilityDetails, (value) => value.toMap()),
    };
  }

  factory OccurrenceContaineranalysisV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return OccurrenceContaineranalysisV1alpha1Args(
      attestation: map['attestation'] == null ? null : (Attestation.fromMap((map['attestation'] as Map).cast<String, dynamic>())).input(),
      buildDetails: map['buildDetails'] == null ? null : (BuildDetails.fromMap((map['buildDetails'] as Map).cast<String, dynamic>())).input(),
      compliance: map['compliance'] == null ? null : (ComplianceOccurrenceContaineranalysisV1alpha1.fromMap((map['compliance'] as Map).cast<String, dynamic>())).input(),
      deployment: map['deployment'] == null ? null : (DeploymentType.fromMap((map['deployment'] as Map).cast<String, dynamic>())).input(),
      derivedImage: map['derivedImage'] == null ? null : (Derived.fromMap((map['derivedImage'] as Map).cast<String, dynamic>())).input(),
      discovered: map['discovered'] == null ? null : (Discovered.fromMap((map['discovered'] as Map).cast<String, dynamic>())).input(),
      dsseAttestation: map['dsseAttestation'] == null ? null : (DSSEAttestationOccurrenceContaineranalysisV1alpha1.fromMap((map['dsseAttestation'] as Map).cast<String, dynamic>())).input(),
      envelope: map['envelope'] == null ? null : (EnvelopeContaineranalysisV1alpha1.fromMap((map['envelope'] as Map).cast<String, dynamic>())).input(),
      installation: map['installation'] == null ? null : (Installation.fromMap((map['installation'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      noteName: map['noteName'] == null ? null : (map['noteName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      remediation: map['remediation'] == null ? null : (map['remediation'] as String).input(),
      resource: map['resource'] == null ? null : (ResourceType.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
      resourceUrl: map['resourceUrl'] == null ? null : (map['resourceUrl'] as String).input(),
      sbom: map['sbom'] == null ? null : (DocumentOccurrence.fromMap((map['sbom'] as Map).cast<String, dynamic>())).input(),
      sbomReference: map['sbomReference'] == null ? null : (SBOMReferenceOccurrenceContaineranalysisV1alpha1.fromMap((map['sbomReference'] as Map).cast<String, dynamic>())).input(),
      spdxFile: map['spdxFile'] == null ? null : (FileOccurrence.fromMap((map['spdxFile'] as Map).cast<String, dynamic>())).input(),
      spdxPackage: map['spdxPackage'] == null ? null : (PackageInfoOccurrence.fromMap((map['spdxPackage'] as Map).cast<String, dynamic>())).input(),
      spdxRelationship: map['spdxRelationship'] == null ? null : (RelationshipOccurrence.fromMap((map['spdxRelationship'] as Map).cast<String, dynamic>())).input(),
      upgrade: map['upgrade'] == null ? null : (UpgradeOccurrenceContaineranalysisV1alpha1.fromMap((map['upgrade'] as Map).cast<String, dynamic>())).input(),
      vulnerabilityDetails: map['vulnerabilityDetails'] == null ? null : (VulnerabilityDetails.fromMap((map['vulnerabilityDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

