import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_automation_v2_args.dart';

/// Creates an organization-owned scheduled or triggered agent automation in the specified organization. Set kind to scheduled or triggered and provide the corresponding configuration. Webhook automation responses include a secret that is shown only once.
class AgentAutomationV2 extends pulumi.CustomResource {
  /// The async trigger type for this automation.
  late final pulumi.Output<String> asyncTriggerType;
  /// The unique identifier for this automation.
  late final pulumi.Output<String> automationID;
  /// The automation kind.
  late final pulumi.Output<String> kind;
  /// The timestamp when this automation last ran, if any.
  late final pulumi.Output<String?> lastExecuted;
  /// The result of the most recent automation run, if any. Valid values currently include 'succeeded', 'failed', and 'skipped'.
  late final pulumi.Output<String?> lastRunStatus;
  /// A human-readable name for this automation.
  late final pulumi.Output<String> name;
  /// The timestamp of the next scheduled execution. Present for scheduled automations.
  late final pulumi.Output<String?> nextExecution;
  /// The destinations that receive notifications about automation runs.
  late final pulumi.Output<List<dynamic>> notificationTargets;
  /// Whether future executions are currently paused.
  late final pulumi.Output<bool> paused;
  /// A standard five-field cron expression in UTC that controls when this automation runs. Present for scheduled automations.
  late final pulumi.Output<String?> scheduleCron;
  /// The task configuration used for each run of this automation, including the prompt, attached entities, and task execution settings. Each run creates a fresh task from this definition.
  late final pulumi.Output<dynamic> task;
  /// The trigger configuration for this automation. Present for triggered automations.
  late final pulumi.Output<dynamic> trigger;

  /// Creates a new [AgentAutomationV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentAutomationV2]. {@macro pulumi_api_agent_automation_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentAutomationV2(
    String name, {
    AgentAutomationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:AgentAutomationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          additionalSecretOutputs: const ['task', 'trigger'],
        ) {
    asyncTriggerType = registerOutput<String>('asyncTriggerType');
    automationID = registerOutput<String>('automationID');
    kind = registerOutput<String>('kind');
    lastExecuted = registerOutput<String?>('lastExecuted');
    lastRunStatus = registerOutput<String?>('lastRunStatus');
    this.name = registerOutput<String>('name');
    nextExecution = registerOutput<String?>('nextExecution');
    notificationTargets = registerOutput<List<dynamic>>('notificationTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    paused = registerOutput<bool>('paused');
    scheduleCron = registerOutput<String?>('scheduleCron');
    task = registerOutput<dynamic>('task', isSecret: true);
    trigger = registerOutput<dynamic>('trigger', isSecret: true);
  }

  /// Creates a typed reference to an existing [AgentAutomationV2] resource.
  AgentAutomationV2.reference(String urn)
    : super(
        'pulumiservice:api:AgentAutomationV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['task', 'trigger'],
        isResourceReference: true,
      ) {
    asyncTriggerType = registerOutput<String>('asyncTriggerType');
    automationID = registerOutput<String>('automationID');
    kind = registerOutput<String>('kind');
    lastExecuted = registerOutput<String?>('lastExecuted');
    lastRunStatus = registerOutput<String?>('lastRunStatus');
    this.name = registerOutput<String>('name');
    nextExecution = registerOutput<String?>('nextExecution');
    notificationTargets = registerOutput<List<dynamic>>('notificationTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    paused = registerOutput<bool>('paused');
    scheduleCron = registerOutput<String?>('scheduleCron');
    task = registerOutput<dynamic>('task', isSecret: true);
    trigger = registerOutput<dynamic>('trigger', isSecret: true);
  }
}
