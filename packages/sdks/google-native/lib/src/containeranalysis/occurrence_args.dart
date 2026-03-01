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
    pulumi.Output<AttestationOccurrence>? attestation,
    pulumi.Output<BuildOccurrence>? build,
    pulumi.Output<ComplianceOccurrence>? compliance,
    pulumi.Output<DeploymentOccurrence>? deployment,
    pulumi.Output<DiscoveryOccurrence>? discovery,
    pulumi.Output<DSSEAttestationOccurrence>? dsseAttestation,
    pulumi.Output<Envelope>? envelope,
    pulumi.Output<ImageOccurrence>? image,
    required pulumi.Output<String> noteName,
    pulumi.Output<PackageOccurrence>? package,
    pulumi.Output<String>? project,
    pulumi.Output<String>? remediation,
    required pulumi.Output<String> resourceUri,
    pulumi.Output<SBOMReferenceOccurrence>? sbomReference,
    pulumi.Output<UpgradeOccurrence>? upgrade,
    pulumi.Output<VulnerabilityOccurrence>? vulnerability,
  }) :
      attestation = pulumi.Input.asOptionalInput<AttestationOccurrence>(attestation),
      build = pulumi.Input.asOptionalInput<BuildOccurrence>(build),
      compliance = pulumi.Input.asOptionalInput<ComplianceOccurrence>(compliance),
      deployment = pulumi.Input.asOptionalInput<DeploymentOccurrence>(deployment),
      discovery = pulumi.Input.asOptionalInput<DiscoveryOccurrence>(discovery),
      dsseAttestation = pulumi.Input.asOptionalInput<DSSEAttestationOccurrence>(dsseAttestation),
      envelope = pulumi.Input.asOptionalInput<Envelope>(envelope),
      image = pulumi.Input.asOptionalInput<ImageOccurrence>(image),
      noteName = pulumi.Input.asInput<String>(noteName),
      package = pulumi.Input.asOptionalInput<PackageOccurrence>(package),
      project = pulumi.Input.asOptionalInput<String>(project),
      remediation = pulumi.Input.asOptionalInput<String>(remediation),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      sbomReference = pulumi.Input.asOptionalInput<SBOMReferenceOccurrence>(sbomReference),
      upgrade = pulumi.Input.asOptionalInput<UpgradeOccurrence>(upgrade),
      vulnerability = pulumi.Input.asOptionalInput<VulnerabilityOccurrence>(vulnerability);

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
      attestation: map['attestation'] == null ? null : pulumi.Output.create<AttestationOccurrence>(AttestationOccurrence.fromMap((map['attestation'] as Map).cast<String, dynamic>())),
      build: map['build'] == null ? null : pulumi.Output.create<BuildOccurrence>(BuildOccurrence.fromMap((map['build'] as Map).cast<String, dynamic>())),
      compliance: map['compliance'] == null ? null : pulumi.Output.create<ComplianceOccurrence>(ComplianceOccurrence.fromMap((map['compliance'] as Map).cast<String, dynamic>())),
      deployment: map['deployment'] == null ? null : pulumi.Output.create<DeploymentOccurrence>(DeploymentOccurrence.fromMap((map['deployment'] as Map).cast<String, dynamic>())),
      discovery: map['discovery'] == null ? null : pulumi.Output.create<DiscoveryOccurrence>(DiscoveryOccurrence.fromMap((map['discovery'] as Map).cast<String, dynamic>())),
      dsseAttestation: map['dsseAttestation'] == null ? null : pulumi.Output.create<DSSEAttestationOccurrence>(DSSEAttestationOccurrence.fromMap((map['dsseAttestation'] as Map).cast<String, dynamic>())),
      envelope: map['envelope'] == null ? null : pulumi.Output.create<Envelope>(Envelope.fromMap((map['envelope'] as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : pulumi.Output.create<ImageOccurrence>(ImageOccurrence.fromMap((map['image'] as Map).cast<String, dynamic>())),
      noteName: pulumi.Output.create<String>(map['noteName'] as String),
      package: map['package'] == null ? null : pulumi.Output.create<PackageOccurrence>(PackageOccurrence.fromMap((map['package'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      remediation: map['remediation'] == null ? null : pulumi.Output.create<String>(map['remediation'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
      sbomReference: map['sbomReference'] == null ? null : pulumi.Output.create<SBOMReferenceOccurrence>(SBOMReferenceOccurrence.fromMap((map['sbomReference'] as Map).cast<String, dynamic>())),
      upgrade: map['upgrade'] == null ? null : pulumi.Output.create<UpgradeOccurrence>(UpgradeOccurrence.fromMap((map['upgrade'] as Map).cast<String, dynamic>())),
      vulnerability: map['vulnerability'] == null ? null : pulumi.Output.create<VulnerabilityOccurrence>(VulnerabilityOccurrence.fromMap((map['vulnerability'] as Map).cast<String, dynamic>())),
    );
  }
}

