import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response.dart';
import 'execution_args.dart';
import 'state_error_response.dart';
import 'status_response.dart';

/// Creates a new execution using the latest revision of the given workflow.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Execution extends pulumi.CustomResource {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  late final pulumi.Output<String> argument;

  /// The call logging level associated to this execution.
  late final pulumi.Output<String> callLogLevel;

  /// Measures the duration of the execution.
  late final pulumi.Output<String> duration;

  /// Marks the end of execution, successful or not.
  late final pulumi.Output<String> endTime;

  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  late final pulumi.Output<ErrorResponse> error;

  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  late final pulumi.Output<Map<String, String>> labels;
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

  /// Error regarding the state of the Execution resource. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  late final pulumi.Output<StateErrorResponse> stateError;

  /// Status tracks the current steps and progress data of this execution.
  late final pulumi.Output<StatusResponse> status;
  late final pulumi.Output<String> workflowId;

  /// Revision of the workflow this execution is using.
  late final pulumi.Output<String> workflowRevisionId;

  /// Creates a new [Execution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Execution]. {@macro pulumi_workflowexecutions_v1_execution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Execution(
    String name, {
    ExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:workflowexecutions/v1:Execution',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    argument = registerOutput<String>('argument');
    callLogLevel = registerOutput<String>('callLogLevel');
    duration = registerOutput<String>('duration');
    endTime = registerOutput<String>('endTime');
    error = registerOutput<ErrorResponse>(
      'error',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ErrorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    result = registerOutput<String>('result');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    stateError = registerOutput<StateErrorResponse>(
      'stateError',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StateErrorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<StatusResponse>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    workflowId = registerOutput<String>('workflowId');
    workflowRevisionId = registerOutput<String>('workflowRevisionId');
  }
}
