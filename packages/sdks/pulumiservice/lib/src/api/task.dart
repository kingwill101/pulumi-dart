import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_args.dart';

/// Creates a new agent task for the specified organization. The request must include a prompt (the user event message) that initiates the task. Set the 'permissionMode' field in the request body to restrict the agent to read-only operations. Returns the created task details including task ID, name, status, and timestamp.
class Task extends pulumi.CustomResource {
  /// Approval mode for this task. Valid values: 'manual', 'auto', 'balanced'.
  late final pulumi.Output<String> approvalMode;
  /// The async trigger source for this task. Null for sync tasks.
  late final pulumi.Output<String?> asyncTriggerType;
  /// Percentage of the context window (1-100) at which the agent triggers conversation compaction. Populated alongside contextWindowTokens when token usage data is available; omitted otherwise.
  late final pulumi.Output<int?> contextCompactionThresholdPercent;
  /// Total input tokens consumed across all model invocations for this task. Approximate context window usage.
  late final pulumi.Output<int?> contextUsedTokens;
  /// Maximum context window size in tokens for the primary model used by this task.
  late final pulumi.Output<int?> contextWindowTokens;
  /// When the task was created, in ISO 8601 format.
  late final pulumi.Output<String> createdAt;
  /// Information about the user who created this task.
  late final pulumi.Output<dynamic> createdBy;
  /// Pulumi entities (stacks, projects, etc.) that provide context for the agent.
  late final pulumi.Output<List<Map<String, dynamic>>> entities;
  /// Whether this task is shared with other org members.
  late final pulumi.Output<bool> isShared;
  /// When the task runtime last reported a heartbeat. Null if the runtime has never checked in.
  late final pulumi.Output<String?> lastHeartbeat;
  /// Display name for the task, typically auto-generated from the initial user message.
  late final pulumi.Output<String> name;
  /// The permission scope for the task.
  late final pulumi.Output<String?> permissionMode;
  /// Whether the task is in plan mode. Set based on the first user message.
  late final pulumi.Output<bool> planMode;
  /// The current runtime phase for this task. Null until the runtime checks in.
  late final pulumi.Output<String?> runtimePhase;
  /// When the task was first shared. Null if never shared.
  late final pulumi.Output<String?> sharedAt;
  /// The origin that triggered this task. Valid values: 'console', 'cli', 'slack', 'schedule', 'api', 'github'.
  late final pulumi.Output<String?> source;
  /// The automation that spawned this task, if the task was created by an automation run.
  late final pulumi.Output<String?> sourceAutomationID;
  /// Current execution status of the task.
  late final pulumi.Output<String> status;
  /// Whether the task was started synchronously by a user or asynchronously by background automation.
  late final pulumi.Output<String> taskType;
  /// Total Neo tokens consumed across all model invocations for this task. Neo tokens are the priced unit used for billing — distinct from the raw model input tokens surfaced in contextUsedTokens / contextWindowTokens.
  late final pulumi.Output<int> tokensUsed;
  /// Where tools are executed for this task. Valid values: 'cloud', 'cli'.
  late final pulumi.Output<String?> toolExecutionMode;

  /// Creates a new [Task].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Task]. {@macro pulumi_api_agents_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Task(
    String name, {
    TaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/agents:Task',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approvalMode = registerOutput<String>('approvalMode');
    asyncTriggerType = registerOutput<String?>('asyncTriggerType');
    contextCompactionThresholdPercent = registerOutput<int?>('contextCompactionThresholdPercent');
    contextUsedTokens = registerOutput<int?>('contextUsedTokens');
    contextWindowTokens = registerOutput<int?>('contextWindowTokens');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<dynamic>('createdBy');
    entities = registerOutput<List<Map<String, dynamic>>>('entities');
    isShared = registerOutput<bool>('isShared');
    lastHeartbeat = registerOutput<String?>('lastHeartbeat');
    this.name = registerOutput<String>('name');
    permissionMode = registerOutput<String?>('permissionMode');
    planMode = registerOutput<bool>('planMode');
    runtimePhase = registerOutput<String?>('runtimePhase');
    sharedAt = registerOutput<String?>('sharedAt');
    source = registerOutput<String?>('source');
    sourceAutomationID = registerOutput<String?>('sourceAutomationID');
    status = registerOutput<String>('status');
    taskType = registerOutput<String>('taskType');
    tokensUsed = registerOutput<int>('tokensUsed');
    toolExecutionMode = registerOutput<String?>('toolExecutionMode');
  }
}
