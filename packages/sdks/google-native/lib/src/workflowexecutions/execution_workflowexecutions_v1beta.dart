import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_workflowexecutions_v1beta.dart';
import 'execution_workflowexecutions_v1beta_args.dart';
import 'status_response_workflowexecutions_v1beta.dart';

/// Creates a new execution using the latest revision of the given workflow.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ExecutionWorkflowexecutionsV1beta extends pulumi.CustomResource {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  late final pulumi.Output<String> argument;

  /// The call logging level associated to this execution.
  late final pulumi.Output<String> callLogLevel;

  /// Marks the end of execution, successful or not.
  late final pulumi.Output<String> endTime;

  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  late final pulumi.Output<ErrorResponseWorkflowexecutionsV1beta> error;
  late final pulumi.Output<String> location;

  /// The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  late final pulumi.Output<String> result;

  /// Marks the beginning of execution.
  late final pulumi.Output<String> startTime;

  /// Current state of the execution.
  late final pulumi.Output<String> state;

  /// Status tracks the current steps and progress data of this execution.
  late final pulumi.Output<StatusResponseWorkflowexecutionsV1beta> status;
  late final pulumi.Output<String> workflowId;

  /// Revision of the workflow this execution is using.
  late final pulumi.Output<String> workflowRevisionId;

  /// Creates a new [ExecutionWorkflowexecutionsV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExecutionWorkflowexecutionsV1beta]. {@macro pulumi_workflowexecutions_v1beta_execution_workflowexecutions_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExecutionWorkflowexecutionsV1beta(
    String name, {
    ExecutionWorkflowexecutionsV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:workflowexecutions/v1beta:Execution',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    argument = registerOutput<String>('argument');
    callLogLevel = registerOutput<String>('callLogLevel');
    endTime = registerOutput<String>('endTime');
    error = registerOutput<ErrorResponseWorkflowexecutionsV1beta>('error');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    result = registerOutput<String>('result');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    status = registerOutput<StatusResponseWorkflowexecutionsV1beta>('status');
    workflowId = registerOutput<String>('workflowId');
    workflowRevisionId = registerOutput<String>('workflowRevisionId');
  }
}
