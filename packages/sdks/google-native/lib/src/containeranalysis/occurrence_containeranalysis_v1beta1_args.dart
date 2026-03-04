// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'details.dart';
import 'document_occurrence_containeranalysis_v1beta1.dart';
import 'envelope_containeranalysis_v1beta1.dart';
import 'file_occurrence_containeranalysis_v1beta1.dart';
import 'grafeas_v1beta1_build_details.dart';
import 'grafeas_v1beta1_deployment_details.dart';
import 'grafeas_v1beta1_discovery_details.dart';
import 'grafeas_v1beta1_image_details.dart';
import 'grafeas_v1beta1_intoto_details.dart';
import 'grafeas_v1beta1_package_details.dart';
import 'grafeas_v1beta1_vulnerability_details.dart';
import 'package_info_occurrence_containeranalysis_v1beta1.dart';
import 'relationship_occurrence_containeranalysis_v1beta1.dart';
import 'resource_containeranalysis_v1beta1.dart';
import 'sbomreference_occurrence_containeranalysis_v1beta1.dart';

/// {@template pulumi_containeranalysis_v1beta1_occurrence_containeranalysis_v1beta1_args_doc}
/// The set of arguments for Occurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_occurrence_containeranalysis_v1beta1_args_doc}
class OccurrenceContaineranalysisV1beta1Args {
  /// Describes an attestation of an artifact.
  final pulumi.Input<Details>? attestation;

  /// Describes a verifiable build.
  final pulumi.Input<GrafeasV1beta1BuildDetails>? build;

  /// Describes the deployment of an artifact on a runtime.
  final pulumi.Input<GrafeasV1beta1DeploymentDetails>? deployment;

  /// Describes how this resource derives from the basis in the associated note.
  final pulumi.Input<GrafeasV1beta1ImageDetails>? derivedImage;

  /// Describes when a resource was discovered.
  final pulumi.Input<GrafeasV1beta1DiscoveryDetails>? discovered;

  /// https://github.com/secure-systems-lab/dsse
  final pulumi.Input<EnvelopeContaineranalysisV1beta1>? envelope;

  /// Describes the installation of a package on the linked resource.
  final pulumi.Input<GrafeasV1beta1PackageDetails>? installation;

  /// Describes a specific in-toto link.
  final pulumi.Input<GrafeasV1beta1IntotoDetails>? intoto;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final pulumi.Input<String> noteName;
  final pulumi.Input<String>? project;

  /// A description of actions that can be taken to remedy the note.
  final pulumi.Input<String>? remediation;

  /// Immutable. The resource for which the occurrence applies.
  final pulumi.Input<ResourceContaineranalysisV1beta1> resource;

  /// Describes a specific software bill of materials document.
  final pulumi.Input<DocumentOccurrenceContaineranalysisV1beta1>? sbom;

  /// Describes a specific SBOM reference occurrences.
  final pulumi.Input<SBOMReferenceOccurrenceContaineranalysisV1beta1>?
  sbomReference;

  /// Describes a specific SPDX File.
  final pulumi.Input<FileOccurrenceContaineranalysisV1beta1>? spdxFile;

  /// Describes a specific SPDX Package.
  final pulumi.Input<PackageInfoOccurrenceContaineranalysisV1beta1>?
  spdxPackage;

  /// Describes a specific SPDX Relationship.
  final pulumi.Input<RelationshipOccurrenceContaineranalysisV1beta1>?
  spdxRelationship;

  /// Describes a security vulnerability.
  final pulumi.Input<GrafeasV1beta1VulnerabilityDetails>? vulnerability;

  /// Creates a new [OccurrenceContaineranalysisV1beta1Args].
  /// [attestation] Describes an attestation of an artifact.
  /// [build] Describes a verifiable build.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [derivedImage] Describes how this resource derives from the basis in the associated note.
  /// [discovered] Describes when a resource was discovered.
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [installation] Describes the installation of a package on the linked resource.
  /// [intoto] Describes a specific in-toto link.
  /// [noteName] Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  /// [project] Optional.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resource] Immutable. The resource for which the occurrence applies.
  /// [sbom] Describes a specific software bill of materials document.
  /// [sbomReference] Describes a specific SBOM reference occurrences.
  /// [spdxFile] Describes a specific SPDX File.
  /// [spdxPackage] Describes a specific SPDX Package.
  /// [spdxRelationship] Describes a specific SPDX Relationship.
  /// [vulnerability] Describes a security vulnerability.
  OccurrenceContaineranalysisV1beta1Args({
    this.attestation,
    this.build,
    this.deployment,
    this.derivedImage,
    this.discovered,
    this.envelope,
    this.installation,
    this.intoto,
    required this.noteName,
    this.project,
    this.remediation,
    required this.resource,
    this.sbom,
    this.sbomReference,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.vulnerability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation':
          ?pulumi.Input.mapOptionalInputValue<Details, Map<String, dynamic>>(
            attestation,
            (value) => value.toMap(),
          ),
      'build':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1BuildDetails,
            Map<String, dynamic>
          >(build, (value) => value.toMap()),
      'deployment':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1DeploymentDetails,
            Map<String, dynamic>
          >(deployment, (value) => value.toMap()),
      'derivedImage':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1ImageDetails,
            Map<String, dynamic>
          >(derivedImage, (value) => value.toMap()),
      'discovered':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1DiscoveryDetails,
            Map<String, dynamic>
          >(discovered, (value) => value.toMap()),
      'envelope':
          ?pulumi.Input.mapOptionalInputValue<
            EnvelopeContaineranalysisV1beta1,
            Map<String, dynamic>
          >(envelope, (value) => value.toMap()),
      'installation':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1PackageDetails,
            Map<String, dynamic>
          >(installation, (value) => value.toMap()),
      'intoto':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1IntotoDetails,
            Map<String, dynamic>
          >(intoto, (value) => value.toMap()),
      'noteName': noteName,
      'project': ?project,
      'remediation': ?remediation,
      'resource':
          pulumi.Input.mapInputValue<
            ResourceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(resource, (value) => value.toMap()),
      'sbom':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(sbom, (value) => value.toMap()),
      'sbomReference':
          ?pulumi.Input.mapOptionalInputValue<
            SBOMReferenceOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(sbomReference, (value) => value.toMap()),
      'spdxFile':
          ?pulumi.Input.mapOptionalInputValue<
            FileOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxFile, (value) => value.toMap()),
      'spdxPackage':
          ?pulumi.Input.mapOptionalInputValue<
            PackageInfoOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxPackage, (value) => value.toMap()),
      'spdxRelationship':
          ?pulumi.Input.mapOptionalInputValue<
            RelationshipOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxRelationship, (value) => value.toMap()),
      'vulnerability':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1VulnerabilityDetails,
            Map<String, dynamic>
          >(vulnerability, (value) => value.toMap()),
    };
  }

  factory OccurrenceContaineranalysisV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return OccurrenceContaineranalysisV1beta1Args(
      attestation: (() {
        final guardedValue = map['attestation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Details.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      build: (() {
        final guardedValue = map['build'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1beta1BuildDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deployment: (() {
        final guardedValue = map['deployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1beta1DeploymentDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      derivedImage: (() {
        final guardedValue = map['derivedImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1beta1ImageDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      discovered: (() {
        final guardedValue = map['discovered'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1beta1DiscoveryDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      envelope: (() {
        final guardedValue = map['envelope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvelopeContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      installation: (() {
        final guardedValue = map['installation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1beta1PackageDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      intoto: (() {
        final guardedValue = map['intoto'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1beta1IntotoDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      noteName: pulumi.Input.fromValue(map['noteName'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remediation: (() {
        final guardedValue = map['remediation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: pulumi.Input.fromValue(
        ResourceContaineranalysisV1beta1.fromMap(
          (map['resource']! as Map).cast<String, dynamic>(),
        ),
      ),
      sbom: (() {
        final guardedValue = map['sbom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DocumentOccurrenceContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sbomReference: (() {
        final guardedValue = map['sbomReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SBOMReferenceOccurrenceContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spdxFile: (() {
        final guardedValue = map['spdxFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileOccurrenceContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spdxPackage: (() {
        final guardedValue = map['spdxPackage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PackageInfoOccurrenceContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spdxRelationship: (() {
        final guardedValue = map['spdxRelationship'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RelationshipOccurrenceContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vulnerability: (() {
        final guardedValue = map['vulnerability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrafeasV1beta1VulnerabilityDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
