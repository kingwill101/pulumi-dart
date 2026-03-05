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
  late final pulumi.Output<List<Map<String, dynamic>>> relatedUrl;
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
    attestationAuthority = registerOutput<AuthorityResponse>('attestationAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    baseImage = registerOutput<BasisResponseContaineranalysisV1beta1>('baseImage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BasisResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    build = registerOutput<BuildResponse>('build', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deployable = registerOutput<DeployableResponseContaineranalysisV1beta1>('deployable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeployableResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    discovery = registerOutput<DiscoveryResponseContaineranalysisV1beta1>('discovery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiscoveryResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expirationTime = registerOutput<String>('expirationTime');
    intoto = registerOutput<InTotoResponse>('intoto', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InTotoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    longDescription = registerOutput<String>('longDescription');
    this.name = registerOutput<String>('name');
    noteId = registerOutput<String>('noteId');
    package = registerOutput<PackageResponseContaineranalysisV1beta1>('package', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PackageResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    relatedNoteNames = registerOutput<List<String>>('relatedNoteNames');
    relatedUrl = registerOutput<List<Map<String, dynamic>>>('relatedUrl');
    sbom = registerOutput<DocumentNoteResponseContaineranalysisV1beta1>('sbom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DocumentNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sbomReference = registerOutput<SBOMReferenceNoteResponseContaineranalysisV1beta1>('sbomReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SBOMReferenceNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shortDescription = registerOutput<String>('shortDescription');
    spdxFile = registerOutput<FileNoteResponseContaineranalysisV1beta1>('spdxFile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spdxPackage = registerOutput<PackageInfoNoteResponseContaineranalysisV1beta1>('spdxPackage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PackageInfoNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spdxRelationship = registerOutput<RelationshipNoteResponseContaineranalysisV1beta1>('spdxRelationship', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RelationshipNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    vulnerability = registerOutput<VulnerabilityResponse>('vulnerability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VulnerabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vulnerabilityAssessment = registerOutput<VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1>('vulnerabilityAssessment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VulnerabilityAssessmentNoteResponseContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
