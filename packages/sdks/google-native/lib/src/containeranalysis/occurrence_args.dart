// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_occurrence.dart';
import 'build_occurrence.dart';
import 'compliance_occurrence.dart';
import 'deployment_occurrence.dart';
import 'discovery_occurrence.dart';
import 'dsseattestation_occurrence.dart';
import 'envelope.dart';
import 'image_occurrence.dart';
import 'package_occurrence.dart';
import 'sbomreference_occurrence.dart';
import 'upgrade_occurrence.dart';
import 'vulnerability_occurrence.dart';

/// {@template pulumi_containeranalysis_v1_occurrence_args_doc}
/// The set of arguments for Occurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_occurrence_args_doc}
class OccurrenceArgs {
  /// Describes an attestation of an artifact.
  final pulumi.Input<AttestationOccurrence>? attestation;
  /// Describes a verifiable build.
  final pulumi.Input<BuildOccurrence>? build;
  /// Describes a compliance violation on a linked resource.
  final pulumi.Input<ComplianceOccurrence>? compliance;
  /// Describes the deployment of an artifact on a runtime.
  final pulumi.Input<DeploymentOccurrence>? deployment;
  /// Describes when a resource was discovered.
  final pulumi.Input<DiscoveryOccurrence>? discovery;
  /// Describes an attestation of an artifact using dsse.
  final pulumi.Input<DSSEAttestationOccurrence>? dsseAttestation;
  /// https://github.com/secure-systems-lab/dsse
  final pulumi.Input<Envelope>? envelope;
  /// Describes how this resource derives from the basis in the associated note.
  final pulumi.Input<ImageOccurrence>? image;
  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final pulumi.Input<String> noteName;
  /// Describes the installation of a package on the linked resource.
  final pulumi.Input<PackageOccurrence>? package;
  final pulumi.Input<String>? project;
  /// A description of actions that can be taken to remedy the note.
  final pulumi.Input<String>? remediation;
  /// Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  final pulumi.Input<String> resourceUri;
  /// Describes a specific SBOM reference occurrences.
  final pulumi.Input<SBOMReferenceOccurrence>? sbomReference;
  /// Describes an available package upgrade on the linked resource.
  final pulumi.Input<UpgradeOccurrence>? upgrade;
  /// Describes a security vulnerability.
  final pulumi.Input<VulnerabilityOccurrence>? vulnerability;

  /// Creates a new [OccurrenceArgs].
  /// [attestation] Describes an attestation of an artifact.
  /// [build] Describes a verifiable build.
  /// [compliance] Describes a compliance violation on a linked resource.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [discovery] Describes when a resource was discovered.
  /// [dsseAttestation] Describes an attestation of an artifact using dsse.
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [image] Describes how this resource derives from the basis in the associated note.
  /// [noteName] Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  /// [package] Describes the installation of a package on the linked resource.
  /// [project] Optional.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resourceUri] Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  /// [sbomReference] Describes a specific SBOM reference occurrences.
  /// [upgrade] Describes an available package upgrade on the linked resource.
  /// [vulnerability] Describes a security vulnerability.
  OccurrenceArgs({
    this.attestation,
    this.build,
    this.compliance,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.envelope,
    this.image,
    required this.noteName,
    this.package,
    this.project,
    this.remediation,
    required this.resourceUri,
    this.sbomReference,
    this.upgrade,
    this.vulnerability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation': ?pulumi.Input.mapOptionalInputValue<AttestationOccurrence, Map<String, dynamic>>(attestation, (value) => value.toMap()),
      'build': ?pulumi.Input.mapOptionalInputValue<BuildOccurrence, Map<String, dynamic>>(build, (value) => value.toMap()),
      'compliance': ?pulumi.Input.mapOptionalInputValue<ComplianceOccurrence, Map<String, dynamic>>(compliance, (value) => value.toMap()),
      'deployment': ?pulumi.Input.mapOptionalInputValue<DeploymentOccurrence, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'discovery': ?pulumi.Input.mapOptionalInputValue<DiscoveryOccurrence, Map<String, dynamic>>(discovery, (value) => value.toMap()),
      'dsseAttestation': ?pulumi.Input.mapOptionalInputValue<DSSEAttestationOccurrence, Map<String, dynamic>>(dsseAttestation, (value) => value.toMap()),
      'envelope': ?pulumi.Input.mapOptionalInputValue<Envelope, Map<String, dynamic>>(envelope, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ImageOccurrence, Map<String, dynamic>>(image, (value) => value.toMap()),
      'noteName': noteName,
      'package': ?pulumi.Input.mapOptionalInputValue<PackageOccurrence, Map<String, dynamic>>(package, (value) => value.toMap()),
      'project': ?project,
      'remediation': ?remediation,
      'resourceUri': resourceUri,
      'sbomReference': ?pulumi.Input.mapOptionalInputValue<SBOMReferenceOccurrence, Map<String, dynamic>>(sbomReference, (value) => value.toMap()),
      'upgrade': ?pulumi.Input.mapOptionalInputValue<UpgradeOccurrence, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
      'vulnerability': ?pulumi.Input.mapOptionalInputValue<VulnerabilityOccurrence, Map<String, dynamic>>(vulnerability, (value) => value.toMap()),
    };
  }

  factory OccurrenceArgs.fromMap(Map<String, dynamic> map) {
    return OccurrenceArgs(
      attestation: map['attestation'] == null ? null : (AttestationOccurrence.fromMap((map['attestation'] as Map).cast<String, dynamic>())).input(),
      build: map['build'] == null ? null : (BuildOccurrence.fromMap((map['build'] as Map).cast<String, dynamic>())).input(),
      compliance: map['compliance'] == null ? null : (ComplianceOccurrence.fromMap((map['compliance'] as Map).cast<String, dynamic>())).input(),
      deployment: map['deployment'] == null ? null : (DeploymentOccurrence.fromMap((map['deployment'] as Map).cast<String, dynamic>())).input(),
      discovery: map['discovery'] == null ? null : (DiscoveryOccurrence.fromMap((map['discovery'] as Map).cast<String, dynamic>())).input(),
      dsseAttestation: map['dsseAttestation'] == null ? null : (DSSEAttestationOccurrence.fromMap((map['dsseAttestation'] as Map).cast<String, dynamic>())).input(),
      envelope: map['envelope'] == null ? null : (Envelope.fromMap((map['envelope'] as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (ImageOccurrence.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      noteName: (map['noteName'] as String).input(),
      package: map['package'] == null ? null : (PackageOccurrence.fromMap((map['package'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      remediation: map['remediation'] == null ? null : (map['remediation'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      sbomReference: map['sbomReference'] == null ? null : (SBOMReferenceOccurrence.fromMap((map['sbomReference'] as Map).cast<String, dynamic>())).input(),
      upgrade: map['upgrade'] == null ? null : (UpgradeOccurrence.fromMap((map['upgrade'] as Map).cast<String, dynamic>())).input(),
      vulnerability: map['vulnerability'] == null ? null : (VulnerabilityOccurrence.fromMap((map['vulnerability'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

