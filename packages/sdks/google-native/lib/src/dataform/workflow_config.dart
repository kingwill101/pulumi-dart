import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_config_response.dart';
import 'workflow_config_args.dart';

/// Creates a new WorkflowConfig in a given Repository.
/// Auto-naming is currently not supported for this resource.
class WorkflowConfig extends pulumi.CustomResource {
  /// Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  late final pulumi.Output<String> cronSchedule;
  /// Optional. If left unset, a default InvocationConfig will be used.
  late final pulumi.Output<InvocationConfigResponse> invocationConfig;
  late final pulumi.Output<String> location;
  /// The workflow config's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of `execution_time`. Updated whenever automatic creation of a workflow invocation is triggered by cron_schedule.
  late final pulumi.Output<List<Map<String, dynamic>>> recentScheduledExecutionRecords;
  /// The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  late final pulumi.Output<String> releaseConfig;
  late final pulumi.Output<String> repositoryId;
  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  late final pulumi.Output<String> timeZone;
  /// Required. The ID to use for the workflow config, which will become the final component of the workflow config's resource name.
  late final pulumi.Output<String> workflowConfigId;

  /// Creates a new [WorkflowConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowConfig]. {@macro pulumi_dataform_v1beta1_workflow_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowConfig(
    String name, {
    WorkflowConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:WorkflowConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cronSchedule = registerOutput<String>('cronSchedule');
    invocationConfig = registerOutput<InvocationConfigResponse>('invocationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    recentScheduledExecutionRecords = registerOutput<List<Map<String, dynamic>>>('recentScheduledExecutionRecords');
    releaseConfig = registerOutput<String>('releaseConfig');
    repositoryId = registerOutput<String>('repositoryId');
    timeZone = registerOutput<String>('timeZone');
    workflowConfigId = registerOutput<String>('workflowConfigId');
  }
}
