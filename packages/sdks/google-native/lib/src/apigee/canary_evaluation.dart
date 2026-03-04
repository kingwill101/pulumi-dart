import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_evaluation_args.dart';
import 'google_cloud_apigee_v1_canary_evaluation_metric_labels_response.dart';

/// Creates a new canary evaluation for an organization.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CanaryEvaluation extends pulumi.CustomResource {
  /// The stable version that is serving requests.
  late final pulumi.Output<String> control;

  /// Create time of the canary evaluation.
  late final pulumi.Output<String> createTime;

  /// End time for the evaluation's analysis.
  late final pulumi.Output<String> endTime;
  late final pulumi.Output<String> instanceId;

  /// Labels used to filter the metrics used for a canary evaluation.
  late final pulumi.Output<
    GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse
  >
  metricLabels;

  /// Name of the canary evalution.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Start time for the canary evaluation's analysis.
  late final pulumi.Output<String> startTime;

  /// The current state of the canary evaluation.
  late final pulumi.Output<String> state;

  /// The newer version that is serving requests.
  late final pulumi.Output<String> treatment;

  /// The resulting verdict of the canary evaluations: NONE, PASS, or FAIL.
  late final pulumi.Output<String> verdict;

  /// Creates a new [CanaryEvaluation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CanaryEvaluation]. {@macro pulumi_apigee_v1_canary_evaluation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CanaryEvaluation(
    String name, {
    CanaryEvaluationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:CanaryEvaluation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    control = registerOutput<String>('control');
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    instanceId = registerOutput<String>('instanceId');
    metricLabels =
        registerOutput<GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse>(
          'metricLabels',
        );
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    treatment = registerOutput<String>('treatment');
    verdict = registerOutput<String>('verdict');
  }
}
