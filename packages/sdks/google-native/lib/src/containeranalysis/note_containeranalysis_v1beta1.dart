import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_response.dart';
import 'basis_response_containeranalysis_v1beta1.dart';
import 'build_response.dart';
import 'deployable_response_containeranalysis_v1beta1.dart';
import 'discovery_response_containeranalysis_v1beta1.dart';
import 'document_note_response_containeranalysis_v1beta1.dart';
import 'file_note_response_containeranalysis_v1beta1.dart';
import 'in_toto_response.dart';
import 'note_containeranalysis_v1beta1_args.dart';
import 'package_info_note_response_containeranalysis_v1beta1.dart';
import 'package_response_containeranalysis_v1beta1.dart';
import 'related_url_response_containeranalysis_v1beta1.dart';
import 'relationship_note_response_containeranalysis_v1beta1.dart';
import 'sbomreference_note_response_containeranalysis_v1beta1.dart';
import 'vulnerability_assessment_note_response_containeranalysis_v1beta1.dart';
import 'vulnerability_response.dart';

/// Creates a new note.
/// Auto-naming is currently not supported for this resource.
class NoteContaineranalysisV1beta1 extends pulumi.CustomResource {
  /// A note describing an attestation role.
  late final pulumi.Output<AuthorityResponse> attestationAuthority;
  /// A note describing a base image.
  late final pulumi.Output<BasisResponseContaineranalysisV1beta1> baseImage;
  /// A note describing build provenance for a verifiable build.
  late final pulumi.Output<BuildResponse> build;
  /// The time this note was created. This field can be used as a filter in list requests.
  late final pulumi.Output<String> createTime;
  /// A note describing something that can be deployed.
  late final pulumi.Output<DeployableResponseContaineranalysisV1beta1> deployable;
  /// A note describing the initial analysis of a resource.
  late final pulumi.Output<DiscoveryResponseContaineranalysisV1beta1> discovery;
  /// Time of expiration for this note. Empty if note does not expire.
  late final pulumi.Output<String> expirationTime;
  /// A note describing an in-toto link.
  late final pulumi.Output<InTotoResponse> intoto;
  /// The type of analysis. This field can be used as a filter in list requests.
  late final pulumi.Output<String> kind;
  /// A detailed description of this note.
  late final pulumi.Output<String> longDescription;
  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  late final pulumi.Output<String> name;
  /// Required. The ID to use for this note.
  late final pulumi.Output<String> noteId;
  /// A note describing a package hosted by various package managers.
  late final pulumi.Output<PackageResponseContaineranalysisV1beta1> package;
  late final pulumi.Output<String> project;
  /// Other notes related to this note.
  late final pulumi.Output<List<String>> relatedNoteNames;
  /// URLs associated with this note.
  late final pulumi.Output<List<RelatedUrlResponseContaineranalysisV1beta1>> relatedUrl;
  /// A note describing a software bill of materials.
  late final pulumi.Output<DocumentNoteResponseContaineranalysisV1beta1> sbom;
  /// A note describing an SBOM reference.
  late final pulumi.Output<SBOMReferenceNoteResponseContaineranalysisV1beta1> sbomReference;
  /// A one sentence description of this note.
  late final pulumi.Output<String> shortDescription;
  /// A note describing an SPDX File.
  late final pulumi.Output<FileNoteResponseContaineranalysisV1beta1> spdxFile;
  /// A note describing an SPDX Package.
  late final pulumi.Output<PackageInfoNoteResponseContaineranalysisV1beta1> spdxPackage;
  /// A note describing an SPDX File.
  late final pulumi.Output<RelationshipNoteResponseContaineranalysisV1beta1> spdxRelationship;
  /// The time this note was last updated. This field can be used as a filter in list requests.
  late final pulumi.Output<String> updateTime;
  /// A note describing a package vulnerability.
  late final pulumi.Output<VulnerabilityResponse> vulnerability;
  /// A note describing a vulnerability assessment.
  late final pulumi.Output<VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1> vulnerabilityAssessment;

  /// Creates a new [NoteContaineranalysisV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NoteContaineranalysisV1beta1]. {@macro pulumi_containeranalysis_v1beta1_note_containeranalysis_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NoteContaineranalysisV1beta1(
    String name, {
    NoteContaineranalysisV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1beta1:Note',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attestationAuthority = registerOutput<AuthorityResponse>('attestationAuthority');
    this.baseImage = registerOutput<BasisResponseContaineranalysisV1beta1>('baseImage');
    this.build = registerOutput<BuildResponse>('build');
    this.createTime = registerOutput<String>('createTime');
    this.deployable = registerOutput<DeployableResponseContaineranalysisV1beta1>('deployable');
    this.discovery = registerOutput<DiscoveryResponseContaineranalysisV1beta1>('discovery');
    this.expirationTime = registerOutput<String>('expirationTime');
    this.intoto = registerOutput<InTotoResponse>('intoto');
    this.kind = registerOutput<String>('kind');
    this.longDescription = registerOutput<String>('longDescription');
    this.name = registerOutput<String>('name');
    this.noteId = registerOutput<String>('noteId');
    this.package = registerOutput<PackageResponseContaineranalysisV1beta1>('package');
    this.project = registerOutput<String>('project');
    this.relatedNoteNames = registerOutput<List<String>>('relatedNoteNames');
    this.relatedUrl = registerOutput<List<RelatedUrlResponseContaineranalysisV1beta1>>('relatedUrl');
    this.sbom = registerOutput<DocumentNoteResponseContaineranalysisV1beta1>('sbom');
    this.sbomReference = registerOutput<SBOMReferenceNoteResponseContaineranalysisV1beta1>('sbomReference');
    this.shortDescription = registerOutput<String>('shortDescription');
    this.spdxFile = registerOutput<FileNoteResponseContaineranalysisV1beta1>('spdxFile');
    this.spdxPackage = registerOutput<PackageInfoNoteResponseContaineranalysisV1beta1>('spdxPackage');
    this.spdxRelationship = registerOutput<RelationshipNoteResponseContaineranalysisV1beta1>('spdxRelationship');
    this.updateTime = registerOutput<String>('updateTime');
    this.vulnerability = registerOutput<VulnerabilityResponse>('vulnerability');
    this.vulnerabilityAssessment = registerOutput<VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1>('vulnerabilityAssessment');
  }
}
