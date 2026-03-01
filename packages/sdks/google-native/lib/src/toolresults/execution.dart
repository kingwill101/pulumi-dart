import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_args.dart';
import 'outcome_response.dart';
import 'specification_response.dart';
import 'timestamp_response.dart';

/// Creates an Execution. The returned Execution will have the id set. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing History does not exist
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Execution extends pulumi.CustomResource {
  /// The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  late final pulumi.Output<TimestampResponse> completionTime;
  /// The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  late final pulumi.Output<TimestampResponse> creationTime;
  /// The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  late final pulumi.Output<List<Map<String, dynamic>>> dimensionDefinitions;
  /// A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  late final pulumi.Output<String> executionId;
  late final pulumi.Output<String> historyId;
  /// Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  late final pulumi.Output<OutcomeResponse> outcome;
  late final pulumi.Output<String> project;
  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  late final pulumi.Output<String?> requestId;
  /// Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  late final pulumi.Output<SpecificationResponse> specification;
  /// The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  late final pulumi.Output<String> state;
  /// TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  late final pulumi.Output<String> testExecutionMatrixId;

  /// Creates a new [Execution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Execution]. {@macro pulumi_toolresults_v1beta3_execution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Execution(
    String name, {
    ExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:toolresults/v1beta3:Execution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.completionTime = registerOutput<TimestampResponse>('completionTime');
    this.creationTime = registerOutput<TimestampResponse>('creationTime');
    this.dimensionDefinitions = registerOutput<List<Map<String, dynamic>>>('dimensionDefinitions');
    this.executionId = registerOutput<String>('executionId');
    this.historyId = registerOutput<String>('historyId');
    this.outcome = registerOutput<OutcomeResponse>('outcome');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.specification = registerOutput<SpecificationResponse>('specification');
    this.state = registerOutput<String>('state');
    this.testExecutionMatrixId = registerOutput<String>('testExecutionMatrixId');
  }
}
