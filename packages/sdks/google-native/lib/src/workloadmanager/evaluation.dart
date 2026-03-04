import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_args.dart';
import 'resource_filter_response.dart';
import 'resource_status_response.dart';

/// Creates a new Evaluation in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Evaluation extends pulumi.CustomResource {
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;

  /// The Cloud Storage bucket name for custom rules.
  late final pulumi.Output<String> customRulesBucket;

  /// Description of the Evaluation
  late final pulumi.Output<String> description;

  /// Required. Id of the requesting object
  late final pulumi.Output<String> evaluationId;

  /// Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// annotations as key value pairs
  late final pulumi.Output<ResourceFilterResponse> resourceFilter;

  /// [Output only] The updated rule ids if exist.
  late final pulumi.Output<ResourceStatusResponse> resourceStatus;

  /// the name of the rule
  late final pulumi.Output<List<String>> ruleNames;

  /// [Output only] The updated rule ids if exist.
  late final pulumi.Output<List<String>> ruleVersions;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  late final pulumi.Output<String> schedule;

  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Evaluation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Evaluation]. {@macro pulumi_workloadmanager_v1_evaluation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Evaluation(
    String name, {
    EvaluationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:workloadmanager/v1:Evaluation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    customRulesBucket = registerOutput<String>('customRulesBucket');
    description = registerOutput<String>('description');
    evaluationId = registerOutput<String>('evaluationId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    resourceFilter = registerOutput<ResourceFilterResponse>('resourceFilter');
    resourceStatus = registerOutput<ResourceStatusResponse>('resourceStatus');
    ruleNames = registerOutput<List<String>>('ruleNames');
    ruleVersions = registerOutput<List<String>>('ruleVersions');
    schedule = registerOutput<String>('schedule');
    updateTime = registerOutput<String>('updateTime');
  }
}
