import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_occurrence_response.dart';
import 'build_occurrence_response.dart';
import 'compliance_occurrence_response.dart';
import 'deployment_occurrence_response.dart';
import 'discovery_occurrence_response.dart';
import 'dsseattestation_occurrence_response.dart';
import 'envelope_response.dart';
import 'image_occurrence_response.dart';
import 'occurrence_args.dart';
import 'package_occurrence_response.dart';
import 'sbomreference_occurrence_response.dart';
import 'upgrade_occurrence_response.dart';
import 'vulnerability_occurrence_response.dart';

/// Creates a new occurrence.
/// Auto-naming is currently not supported for this resource.
class Occurrence extends pulumi.CustomResource {
  /// Describes an attestation of an artifact.
  late final pulumi.Output<AttestationOccurrenceResponse> attestation;
  /// Describes a verifiable build.
  late final pulumi.Output<BuildOccurrenceResponse> build;
  /// Describes a compliance violation on a linked resource.
  late final pulumi.Output<ComplianceOccurrenceResponse> compliance;
  /// The time this occurrence was created.
  late final pulumi.Output<String> createTime;
  /// Describes the deployment of an artifact on a runtime.
  late final pulumi.Output<DeploymentOccurrenceResponse> deployment;
  /// Describes when a resource was discovered.
  late final pulumi.Output<DiscoveryOccurrenceResponse> discovery;
  /// Describes an attestation of an artifact using dsse.
  late final pulumi.Output<DSSEAttestationOccurrenceResponse> dsseAttestation;
  /// https://github.com/secure-systems-lab/dsse
  late final pulumi.Output<EnvelopeResponse> envelope;
  /// Describes how this resource derives from the basis in the associated note.
  late final pulumi.Output<ImageOccurrenceResponse> image;
  /// This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  late final pulumi.Output<String> kind;
  /// The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  late final pulumi.Output<String> name;
  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  late final pulumi.Output<String> noteName;
  /// Describes the installation of a package on the linked resource.
  late final pulumi.Output<PackageOccurrenceResponse> package;
  late final pulumi.Output<String> project;
  /// A description of actions that can be taken to remedy the note.
  late final pulumi.Output<String> remediation;
  /// Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  late final pulumi.Output<String> resourceUri;
  /// Describes a specific SBOM reference occurrences.
  late final pulumi.Output<SBOMReferenceOccurrenceResponse> sbomReference;
  /// The time this occurrence was last updated.
  late final pulumi.Output<String> updateTime;
  /// Describes an available package upgrade on the linked resource.
  late final pulumi.Output<UpgradeOccurrenceResponse> upgrade;
  /// Describes a security vulnerability.
  late final pulumi.Output<VulnerabilityOccurrenceResponse> vulnerability;

  /// Creates a new [Occurrence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Occurrence]. {@macro pulumi_containeranalysis_v1_occurrence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Occurrence(
    String name, {
    OccurrenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1:Occurrence',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestation = registerOutput<AttestationOccurrenceResponse>('attestation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttestationOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    build = registerOutput<BuildOccurrenceResponse>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compliance = registerOutput<ComplianceOccurrenceResponse>('compliance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ComplianceOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deployment = registerOutput<DeploymentOccurrenceResponse>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discovery = registerOutput<DiscoveryOccurrenceResponse>('discovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiscoveryOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dsseAttestation = registerOutput<DSSEAttestationOccurrenceResponse>('dsseAttestation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DSSEAttestationOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    envelope = registerOutput<EnvelopeResponse>('envelope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvelopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    image = registerOutput<ImageOccurrenceResponse>('image', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    noteName = registerOutput<String>('noteName');
    package = registerOutput<PackageOccurrenceResponse>('package', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PackageOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    remediation = registerOutput<String>('remediation');
    resourceUri = registerOutput<String>('resourceUri');
    sbomReference = registerOutput<SBOMReferenceOccurrenceResponse>('sbomReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SBOMReferenceOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    upgrade = registerOutput<UpgradeOccurrenceResponse>('upgrade', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpgradeOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vulnerability = registerOutput<VulnerabilityOccurrenceResponse>('vulnerability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VulnerabilityOccurrenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
