import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config_response.dart';
import 'study_args.dart';

/// Creates a study.
/// Auto-naming is currently not supported for this resource.
class Study extends pulumi.CustomResource {
  /// Time at which the study was created.
  late final pulumi.Output<String> createTime;

  /// A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
  late final pulumi.Output<String> inactiveReason;
  late final pulumi.Output<String> location;

  /// The name of a study.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The detailed state of a study.
  late final pulumi.Output<String> state;

  /// Configuration of the study.
  late final pulumi.Output<GoogleCloudMlV1StudyConfigResponse> studyConfig;

  /// Required. The ID to use for the study, which will become the final component of the study's resource name.
  late final pulumi.Output<String> studyId;

  /// Creates a new [Study].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Study]. {@macro pulumi_ml_v1_study_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Study(String name, {StudyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:ml/v1:Study',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    inactiveReason = registerOutput<String>('inactiveReason');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    studyConfig = registerOutput<GoogleCloudMlV1StudyConfigResponse>(
      'studyConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudMlV1StudyConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    studyId = registerOutput<String>('studyId');
  }
}
