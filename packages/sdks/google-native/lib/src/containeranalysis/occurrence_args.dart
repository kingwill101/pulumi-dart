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
  const OccurrenceArgs({
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
      attestation: (() { final guardedValue = map['attestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttestationOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComplianceOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveryOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dsseAttestation: (() { final guardedValue = map['dsseAttestation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DSSEAttestationOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      envelope: (() { final guardedValue = map['envelope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Envelope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noteName: pulumi.Input.fromValue(map['noteName'] as String),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackageOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediation: (() { final guardedValue = map['remediation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      sbomReference: (() { final guardedValue = map['sbomReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBOMReferenceOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgrade: (() { final guardedValue = map['upgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerability: (() { final guardedValue = map['vulnerability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
