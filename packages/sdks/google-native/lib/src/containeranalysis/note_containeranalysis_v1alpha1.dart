import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_authority_response.dart';
import 'basis_response.dart';
import 'build_type_response.dart';
import 'compliance_note_response_containeranalysis_v1alpha1.dart';
import 'deployable_response.dart';
import 'discovery_response.dart';
import 'document_note_response.dart';
import 'dsseattestation_note_response_containeranalysis_v1alpha1.dart';
import 'file_note_response.dart';
import 'note_containeranalysis_v1alpha1_args.dart';
import 'package_info_note_response.dart';
import 'package_response.dart';
import 'relationship_note_response.dart';
import 'sbomreference_note_response_containeranalysis_v1alpha1.dart';
import 'upgrade_note_response_containeranalysis_v1alpha1.dart';
import 'vulnerability_assessment_note_response_containeranalysis_v1alpha1.dart';
import 'vulnerability_type_response.dart';

/// Creates a new `Note`.
class NoteContaineranalysisV1alpha1 extends pulumi.CustomResource {
  /// A note describing an attestation role.
  late final pulumi.Output<AttestationAuthorityResponse> attestationAuthority;

  /// A note describing a base image.
  late final pulumi.Output<BasisResponse> baseImage;

  /// Build provenance type for a verifiable build.
  late final pulumi.Output<BuildTypeResponse> buildType;

  /// A note describing a compliance check.
  late final pulumi.Output<ComplianceNoteResponseContaineranalysisV1alpha1>
  compliance;

  /// The time this note was created. This field can be used as a filter in list requests.
  late final pulumi.Output<String> createTime;

  /// A note describing something that can be deployed.
  late final pulumi.Output<DeployableResponse> deployable;

  /// A note describing a provider/analysis type.
  late final pulumi.Output<DiscoveryResponse> discovery;

  /// A note describing a dsse attestation note.
  late final pulumi.Output<DSSEAttestationNoteResponseContaineranalysisV1alpha1>
  dsseAttestation;

  /// Time of expiration for this note, null if note does not expire.
  late final pulumi.Output<String> expirationTime;

  /// This explicitly denotes which kind of note is specified. This field can be used as a filter in list requests.
  late final pulumi.Output<String> kind;

  /// A detailed description of this `Note`.
  late final pulumi.Output<String> longDescription;

  /// The name of the project. Should be of the form "providers/{provider_id}". @Deprecated
  late final pulumi.Output<String> name;

  /// The ID to use for this note.
  late final pulumi.Output<String?> noteId;

  /// A note describing a package hosted by various package managers.
  late final pulumi.Output<PackageResponse> package;
  late final pulumi.Output<String> project;

  /// URLs associated with this note
  late final pulumi.Output<List<Map<String, dynamic>>> relatedUrl;

  /// A note describing a software bill of materials.
  late final pulumi.Output<DocumentNoteResponse> sbom;

  /// A note describing a reference to an SBOM.
  late final pulumi.Output<SBOMReferenceNoteResponseContaineranalysisV1alpha1>
  sbomReference;

  /// A one sentence description of this `Note`.
  late final pulumi.Output<String> shortDescription;

  /// A note describing an SPDX File.
  late final pulumi.Output<FileNoteResponse> spdxFile;

  /// A note describing an SPDX Package.
  late final pulumi.Output<PackageInfoNoteResponse> spdxPackage;

  /// A note describing a relationship between SPDX elements.
  late final pulumi.Output<RelationshipNoteResponse> spdxRelationship;

  /// The time this note was last updated. This field can be used as a filter in list requests.
  late final pulumi.Output<String> updateTime;

  /// A note describing an upgrade.
  late final pulumi.Output<UpgradeNoteResponseContaineranalysisV1alpha1>
  upgrade;

  /// A note describing a vulnerability assessment.
  late final pulumi.Output<
    VulnerabilityAssessmentNoteResponseContaineranalysisV1alpha1
  >
  vulnerabilityAssessment;

  /// A package vulnerability type of note.
  late final pulumi.Output<VulnerabilityTypeResponse> vulnerabilityType;

  /// Creates a new [NoteContaineranalysisV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NoteContaineranalysisV1alpha1]. {@macro pulumi_containeranalysis_v1alpha1_note_containeranalysis_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NoteContaineranalysisV1alpha1(
    String name, {
    NoteContaineranalysisV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:containeranalysis/v1alpha1:Note',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attestationAuthority = registerOutput<AttestationAuthorityResponse>(
      'attestationAuthority',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AttestationAuthorityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    baseImage = registerOutput<BasisResponse>(
      'baseImage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BasisResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    buildType = registerOutput<BuildTypeResponse>(
      'buildType',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BuildTypeResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    compliance =
        registerOutput<ComplianceNoteResponseContaineranalysisV1alpha1>(
          'compliance',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ComplianceNoteResponseContaineranalysisV1alpha1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    deployable = registerOutput<DeployableResponse>(
      'deployable',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeployableResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    discovery = registerOutput<DiscoveryResponse>(
      'discovery',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DiscoveryResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dsseAttestation =
        registerOutput<DSSEAttestationNoteResponseContaineranalysisV1alpha1>(
          'dsseAttestation',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DSSEAttestationNoteResponseContaineranalysisV1alpha1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    expirationTime = registerOutput<String>('expirationTime');
    kind = registerOutput<String>('kind');
    longDescription = registerOutput<String>('longDescription');
    this.name = registerOutput<String>('name');
    noteId = registerOutput<String?>('noteId');
    package = registerOutput<PackageResponse>(
      'package',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PackageResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    relatedUrl = registerOutput<List<Map<String, dynamic>>>('relatedUrl');
    sbom = registerOutput<DocumentNoteResponse>(
      'sbom',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DocumentNoteResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sbomReference =
        registerOutput<SBOMReferenceNoteResponseContaineranalysisV1alpha1>(
          'sbomReference',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return SBOMReferenceNoteResponseContaineranalysisV1alpha1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    shortDescription = registerOutput<String>('shortDescription');
    spdxFile = registerOutput<FileNoteResponse>(
      'spdxFile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FileNoteResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spdxPackage = registerOutput<PackageInfoNoteResponse>(
      'spdxPackage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PackageInfoNoteResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spdxRelationship = registerOutput<RelationshipNoteResponse>(
      'spdxRelationship',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RelationshipNoteResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    updateTime = registerOutput<String>('updateTime');
    upgrade = registerOutput<UpgradeNoteResponseContaineranalysisV1alpha1>(
      'upgrade',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return UpgradeNoteResponseContaineranalysisV1alpha1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vulnerabilityAssessment =
        registerOutput<
          VulnerabilityAssessmentNoteResponseContaineranalysisV1alpha1
        >(
          'vulnerabilityAssessment',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return VulnerabilityAssessmentNoteResponseContaineranalysisV1alpha1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    vulnerabilityType = registerOutput<VulnerabilityTypeResponse>(
      'vulnerabilityType',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VulnerabilityTypeResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
