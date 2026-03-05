import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_task_execution_status_response.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec_response.dart';
import 'task_args.dart';

/// Creates a task resource within a lake.
/// Auto-naming is currently not supported for this resource.
class Task extends pulumi.CustomResource {
  /// The time when the task was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the task.
  late final pulumi.Output<String> description;

  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;

  /// Spec related to how a task is executed.
  late final pulumi.Output<GoogleCloudDataplexV1TaskExecutionSpecResponse>
  executionSpec;

  /// Status of the latest task executions.
  late final pulumi.Output<GoogleCloudDataplexV1TaskExecutionStatusResponse>
  executionStatus;

  /// Optional. User-defined labels for the task.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;

  /// The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.
  late final pulumi.Output<String> name;

  /// Config related to running scheduled Notebooks.
  late final pulumi.Output<GoogleCloudDataplexV1TaskNotebookTaskConfigResponse>
  notebook;
  late final pulumi.Output<String> project;

  /// Config related to running custom Spark tasks.
  late final pulumi.Output<GoogleCloudDataplexV1TaskSparkTaskConfigResponse>
  spark;

  /// Current state of the task.
  late final pulumi.Output<String> state;

  /// Required. Task identifier.
  late final pulumi.Output<String> taskId;

  /// Spec related to how often and when a task should be triggered.
  late final pulumi.Output<GoogleCloudDataplexV1TaskTriggerSpecResponse>
  triggerSpec;

  /// System generated globally unique ID for the task. This ID will be different if the task is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the task was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Task].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Task]. {@macro pulumi_dataplex_v1_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Task(String name, {TaskArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:dataplex/v1:Task',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    executionSpec =
        registerOutput<GoogleCloudDataplexV1TaskExecutionSpecResponse>(
          'executionSpec',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1TaskExecutionSpecResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    executionStatus =
        registerOutput<GoogleCloudDataplexV1TaskExecutionStatusResponse>(
          'executionStatus',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1TaskExecutionStatusResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    labels = registerOutput<Map<String, String>>('labels');
    lakeId = registerOutput<String>('lakeId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notebook =
        registerOutput<GoogleCloudDataplexV1TaskNotebookTaskConfigResponse>(
          'notebook',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDataplexV1TaskNotebookTaskConfigResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    project = registerOutput<String>('project');
    spark = registerOutput<GoogleCloudDataplexV1TaskSparkTaskConfigResponse>(
      'spark',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudDataplexV1TaskSparkTaskConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String>('state');
    taskId = registerOutput<String>('taskId');
    triggerSpec = registerOutput<GoogleCloudDataplexV1TaskTriggerSpecResponse>(
      'triggerSpec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudDataplexV1TaskTriggerSpecResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
