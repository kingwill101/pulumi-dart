import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_response.dart';
import 'study_aiplatform_v1beta1_args.dart';

/// Creates a Study. A resource name will be generated after creation of the Study.
/// Auto-naming is currently not supported for this resource.
class StudyAiplatformV1beta1 extends pulumi.CustomResource {
  /// Time at which the study was created.
  late final pulumi.Output<String> createTime;
  /// Describes the Study, default value is empty string.
  late final pulumi.Output<String> displayName;
  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  late final pulumi.Output<String> inactiveReason;
  late final pulumi.Output<String> location;
  /// The name of a study. The study's globally unique identifier. Format: `projects/{project}/locations/{location}/studies/{study}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The detailed state of a Study.
  late final pulumi.Output<String> state;
  /// Configuration of the Study.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1StudySpecResponse> studySpec;

  /// Creates a new [StudyAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StudyAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_study_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StudyAiplatformV1beta1(
    String name, {
    StudyAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Study',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    inactiveReason = registerOutput<String>('inactiveReason');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    studySpec = registerOutput<GoogleCloudAiplatformV1beta1StudySpecResponse>('studySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1StudySpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
