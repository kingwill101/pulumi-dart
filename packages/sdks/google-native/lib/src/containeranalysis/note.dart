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
  late final pulumi.Output<VulnerabilityAssessmentNoteResponse>
  vulnerabilityAssessment;

  /// Creates a new [Note].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Note]. {@macro pulumi_containeranalysis_v1_note_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Note(String name, {NoteArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:containeranalysis/v1:Note',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    attestation = registerOutput<AttestationNoteResponse>('attestation');
    build = registerOutput<BuildNoteResponse>('build');
    compliance = registerOutput<ComplianceNoteResponse>('compliance');
    createTime = registerOutput<String>('createTime');
    deployment = registerOutput<DeploymentNoteResponse>('deployment');
    discovery = registerOutput<DiscoveryNoteResponse>('discovery');
    dsseAttestation = registerOutput<DSSEAttestationNoteResponse>(
      'dsseAttestation',
    );
    expirationTime = registerOutput<String>('expirationTime');
    image = registerOutput<ImageNoteResponse>('image');
    kind = registerOutput<String>('kind');
    longDescription = registerOutput<String>('longDescription');
    this.name = registerOutput<String>('name');
    noteId = registerOutput<String>('noteId');
    package = registerOutput<PackageNoteResponse>('package');
    project = registerOutput<String>('project');
    relatedNoteNames = registerOutput<List<String>>('relatedNoteNames');
    relatedUrl = registerOutput<List<Map<String, dynamic>>>('relatedUrl');
    sbomReference = registerOutput<SBOMReferenceNoteResponse>('sbomReference');
    shortDescription = registerOutput<String>('shortDescription');
    updateTime = registerOutput<String>('updateTime');
    upgrade = registerOutput<UpgradeNoteResponse>('upgrade');
    vulnerability = registerOutput<VulnerabilityNoteResponse>('vulnerability');
    vulnerabilityAssessment =
        registerOutput<VulnerabilityAssessmentNoteResponse>(
          'vulnerabilityAssessment',
        );
  }
}
