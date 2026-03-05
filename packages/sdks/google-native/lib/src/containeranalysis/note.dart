import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_note_response.dart';
import 'build_note_response.dart';
import 'compliance_note_response.dart';
import 'deployment_note_response.dart';
import 'discovery_note_response.dart';
import 'dsseattestation_note_response.dart';
import 'image_note_response.dart';
import 'note_args.dart';
import 'package_note_response.dart';
import 'sbomreference_note_response.dart';
import 'upgrade_note_response.dart';
import 'vulnerability_assessment_note_response.dart';
import 'vulnerability_note_response.dart';

/// Creates a new note.
/// Auto-naming is currently not supported for this resource.
class Note extends pulumi.CustomResource {
  /// A note describing an attestation role.
  late final pulumi.Output<AttestationNoteResponse> attestation;
  /// A note describing build provenance for a verifiable build.
  late final pulumi.Output<BuildNoteResponse> build;
  /// A note describing a compliance check.
  late final pulumi.Output<ComplianceNoteResponse> compliance;
  /// The time this note was created. This field can be used as a filter in list requests.
  late final pulumi.Output<String> createTime;
  /// A note describing something that can be deployed.
  late final pulumi.Output<DeploymentNoteResponse> deployment;
  /// A note describing the initial analysis of a resource.
  late final pulumi.Output<DiscoveryNoteResponse> discovery;
  /// A note describing a dsse attestation note.
  late final pulumi.Output<DSSEAttestationNoteResponse> dsseAttestation;
  /// Time of expiration for this note. Empty if note does not expire.
  late final pulumi.Output<String> expirationTime;
  /// A note describing a base image.
  late final pulumi.Output<ImageNoteResponse> image;
  /// The type of analysis. This field can be used as a filter in list requests.
  late final pulumi.Output<String> kind;
  /// A detailed description of this note.
  late final pulumi.Output<String> longDescription;
  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  late final pulumi.Output<String> name;
  /// Required. The ID to use for this note.
  late final pulumi.Output<String> noteId;
  /// A note describing a package hosted by various package managers.
  late final pulumi.Output<PackageNoteResponse> package;
  late final pulumi.Output<String> project;
  /// Other notes related to this note.
  late final pulumi.Output<List<String>> relatedNoteNames;
  /// URLs associated with this note.
  late final pulumi.Output<List<Map<String, dynamic>>> relatedUrl;
  /// A note describing an SBOM reference.
  late final pulumi.Output<SBOMReferenceNoteResponse> sbomReference;
  /// A one sentence description of this note.
  late final pulumi.Output<String> shortDescription;
  /// The time this note was last updated. This field can be used as a filter in list requests.
  late final pulumi.Output<String> updateTime;
  /// A note describing available package upgrades.
  late final pulumi.Output<UpgradeNoteResponse> upgrade;
  /// A note describing a package vulnerability.
  late final pulumi.Output<VulnerabilityNoteResponse> vulnerability;
  /// A note describing a vulnerability assessment.
  late final pulumi.Output<VulnerabilityAssessmentNoteResponse> vulnerabilityAssessment;

  /// Creates a new [Note].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Note]. {@macro pulumi_containeranalysis_v1_note_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Note(
    String name, {
    NoteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1:Note',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestation = registerOutput<AttestationNoteResponse>('attestation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttestationNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    build = registerOutput<BuildNoteResponse>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compliance = registerOutput<ComplianceNoteResponse>('compliance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ComplianceNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deployment = registerOutput<DeploymentNoteResponse>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discovery = registerOutput<DiscoveryNoteResponse>('discovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiscoveryNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dsseAttestation = registerOutput<DSSEAttestationNoteResponse>('dsseAttestation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DSSEAttestationNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expirationTime = registerOutput<String>('expirationTime');
    image = registerOutput<ImageNoteResponse>('image', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    longDescription = registerOutput<String>('longDescription');
    this.name = registerOutput<String>('name');
    noteId = registerOutput<String>('noteId');
    package = registerOutput<PackageNoteResponse>('package', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PackageNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    relatedNoteNames = registerOutput<List<String>>('relatedNoteNames');
    relatedUrl = registerOutput<List<Map<String, dynamic>>>('relatedUrl');
    sbomReference = registerOutput<SBOMReferenceNoteResponse>('sbomReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SBOMReferenceNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shortDescription = registerOutput<String>('shortDescription');
    updateTime = registerOutput<String>('updateTime');
    upgrade = registerOutput<UpgradeNoteResponse>('upgrade', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UpgradeNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vulnerability = registerOutput<VulnerabilityNoteResponse>('vulnerability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VulnerabilityNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vulnerabilityAssessment = registerOutput<VulnerabilityAssessmentNoteResponse>('vulnerabilityAssessment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VulnerabilityAssessmentNoteResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
