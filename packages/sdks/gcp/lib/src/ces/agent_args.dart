// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_after_agent_callback.dart';
import 'agent_after_model_callback.dart';
import 'agent_after_tool_callback.dart';
import 'agent_before_agent_callback.dart';
import 'agent_before_model_callback.dart';
import 'agent_before_tool_callback.dart';
import 'agent_model_settings.dart';
import 'agent_remote_dialogflow_agent.dart';
import 'agent_toolset.dart';

/// {@template pulumi_ces_agent_agent_args_doc}
/// The set of arguments for Agent.
/// {@endtemplate}
/// {@macro pulumi_ces_agent_agent_args_doc}
class AgentArgs {
  /// The callbacks to execute after the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentAfterAgentCallback>>? afterAgentCallbacks;

  /// The callbacks to execute after the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentAfterModelCallback>>? afterModelCallbacks;

  /// The callbacks to execute after the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentAfterToolCallback>>? afterToolCallbacks;

  /// The ID to use for the agent, which will become the final component of
  /// the agent's resource name. If not provided, a unique ID will be
  /// automatically assigned for the agent.
  final pulumi.Input<String>? agentId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;

  /// The callbacks to execute before the agent is called.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentBeforeAgentCallback>>? beforeAgentCallbacks;

  /// The callbacks to execute before the model is called. If there are multiple
  /// calls to the model, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentBeforeModelCallback>>? beforeModelCallbacks;

  /// The callbacks to execute before the tool is invoked. If there are multiple
  /// tool invocations, the callback will be executed multiple times.
  /// The provided callbacks are executed sequentially in the exact order they
  /// are given in the list. If a callback returns an overridden response,
  /// execution stops and any remaining callbacks are skipped.
  /// Structure is documented below.
  final pulumi.Input<List<AgentBeforeToolCallback>>? beforeToolCallbacks;

  /// List of child agents in the agent tree.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<List<String>>? childAgents;

  /// Human-readable description of the agent.
  final pulumi.Input<String>? description;

  /// Display name of the agent.
  final pulumi.Input<String> displayName;

  /// List of guardrails for the agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final pulumi.Input<List<String>>? guardrails;

  /// Instructions for the LLM model to guide the agent's behavior.
  final pulumi.Input<String>? instruction;

  /// Default agent type. The agent uses instructions and callbacks specified in
  /// the agent to perform the task using a large language model.
  final pulumi.Input<Map<String, dynamic>>? llmAgent;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<AgentModelSettings>? modelSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The agent which will transfer execution to an existing remote
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents)
  /// agent flow. The corresponding Dialogflow agent will process subsequent user
  /// queries until the session ends or flow ends and the control is transferred
  /// back to the parent CES agent.
  /// Structure is documented below.
  final pulumi.Input<AgentRemoteDialogflowAgent>? remoteDialogflowAgent;

  /// List of available tools for the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final pulumi.Input<List<String>>? tools;

  /// List of toolsets for the agent.
  /// Structure is documented below.
  final pulumi.Input<List<AgentToolset>>? toolsets;

  /// Creates a new [AgentArgs].
  /// [afterAgentCallbacks] The callbacks to execute after the agent is called.
  /// [afterModelCallbacks] The callbacks to execute after the model is called. If there are multiple
  /// [afterToolCallbacks] The callbacks to execute after the tool is invoked. If there are multiple
  /// [agentId] The ID to use for the agent, which will become the final component of
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [beforeAgentCallbacks] The callbacks to execute before the agent is called.
  /// [beforeModelCallbacks] The callbacks to execute before the model is called. If there are multiple
  /// [beforeToolCallbacks] The callbacks to execute before the tool is invoked. If there are multiple
  /// [childAgents] List of child agents in the agent tree.
  /// [description] Human-readable description of the agent.
  /// [displayName] Display name of the agent.
  /// [guardrails] List of guardrails for the agent.
  /// [instruction] Instructions for the LLM model to guide the agent's behavior.
  /// [llmAgent] Default agent type. The agent uses instructions and callbacks specified in
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [project] The ID of the project in which the resource belongs.
  /// [remoteDialogflowAgent] The agent which will transfer execution to an existing remote
  /// [tools] List of available tools for the agent.
  /// [toolsets] List of toolsets for the agent.
  AgentArgs({
    this.afterAgentCallbacks,
    this.afterModelCallbacks,
    this.afterToolCallbacks,
    this.agentId,
    required this.app,
    this.beforeAgentCallbacks,
    this.beforeModelCallbacks,
    this.beforeToolCallbacks,
    this.childAgents,
    this.description,
    required this.displayName,
    this.guardrails,
    this.instruction,
    this.llmAgent,
    required this.location,
    this.modelSettings,
    this.project,
    this.remoteDialogflowAgent,
    this.tools,
    this.toolsets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterAgentCallbacks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentAfterAgentCallback>,
            List<Map<String, dynamic>>
          >(
            afterAgentCallbacks,
            (value) =>
                pulumi.Input.encodeList<
                  AgentAfterAgentCallback,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'afterModelCallbacks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentAfterModelCallback>,
            List<Map<String, dynamic>>
          >(
            afterModelCallbacks,
            (value) =>
                pulumi.Input.encodeList<
                  AgentAfterModelCallback,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'afterToolCallbacks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentAfterToolCallback>,
            List<Map<String, dynamic>>
          >(
            afterToolCallbacks,
            (value) =>
                pulumi.Input.encodeList<
                  AgentAfterToolCallback,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'agentId': ?agentId,
      'app': app,
      'beforeAgentCallbacks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentBeforeAgentCallback>,
            List<Map<String, dynamic>>
          >(
            beforeAgentCallbacks,
            (value) =>
                pulumi.Input.encodeList<
                  AgentBeforeAgentCallback,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'beforeModelCallbacks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentBeforeModelCallback>,
            List<Map<String, dynamic>>
          >(
            beforeModelCallbacks,
            (value) =>
                pulumi.Input.encodeList<
                  AgentBeforeModelCallback,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'beforeToolCallbacks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentBeforeToolCallback>,
            List<Map<String, dynamic>>
          >(
            beforeToolCallbacks,
            (value) =>
                pulumi.Input.encodeList<
                  AgentBeforeToolCallback,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'childAgents': ?childAgents,
      'description': ?description,
      'displayName': displayName,
      'guardrails': ?guardrails,
      'instruction': ?instruction,
      'llmAgent': ?llmAgent,
      'location': location,
      'modelSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AgentModelSettings,
            Map<String, dynamic>
          >(modelSettings, (value) => value.toMap()),
      'project': ?project,
      'remoteDialogflowAgent':
          ?pulumi.Input.mapOptionalInputValue<
            AgentRemoteDialogflowAgent,
            Map<String, dynamic>
          >(remoteDialogflowAgent, (value) => value.toMap()),
      'tools': ?tools,
      'toolsets':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentToolset>,
            List<Map<String, dynamic>>
          >(
            toolsets,
            (value) =>
                pulumi.Input.encodeList<AgentToolset, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      afterAgentCallbacks: (() {
        final guardedValue = map['afterAgentCallbacks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentAfterAgentCallback>(
            guardedValue,
            (value) => AgentAfterAgentCallback.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      afterModelCallbacks: (() {
        final guardedValue = map['afterModelCallbacks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentAfterModelCallback>(
            guardedValue,
            (value) => AgentAfterModelCallback.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      afterToolCallbacks: (() {
        final guardedValue = map['afterToolCallbacks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentAfterToolCallback>(
            guardedValue,
            (value) => AgentAfterToolCallback.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      agentId: (() {
        final guardedValue = map['agentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      app: pulumi.Input.fromValue(map['app'] as String),
      beforeAgentCallbacks: (() {
        final guardedValue = map['beforeAgentCallbacks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentBeforeAgentCallback>(
            guardedValue,
            (value) => AgentBeforeAgentCallback.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      beforeModelCallbacks: (() {
        final guardedValue = map['beforeModelCallbacks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentBeforeModelCallback>(
            guardedValue,
            (value) => AgentBeforeModelCallback.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      beforeToolCallbacks: (() {
        final guardedValue = map['beforeToolCallbacks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentBeforeToolCallback>(
            guardedValue,
            (value) => AgentBeforeToolCallback.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      childAgents: (() {
        final guardedValue = map['childAgents'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      guardrails: (() {
        final guardedValue = map['guardrails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instruction: (() {
        final guardedValue = map['instruction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      llmAgent: (() {
        final guardedValue = map['llmAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      modelSettings: (() {
        final guardedValue = map['modelSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentModelSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteDialogflowAgent: (() {
        final guardedValue = map['remoteDialogflowAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentRemoteDialogflowAgent.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tools: (() {
        final guardedValue = map['tools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      toolsets: (() {
        final guardedValue = map['toolsets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentToolset>(
            guardedValue,
            (value) =>
                AgentToolset.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
