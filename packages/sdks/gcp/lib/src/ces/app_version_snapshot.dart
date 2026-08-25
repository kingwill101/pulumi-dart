// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_agent.dart';
import 'app_version_snapshot_app.dart';
import 'app_version_snapshot_example.dart';
import 'app_version_snapshot_guardrail.dart';
import 'app_version_snapshot_tool.dart';
import 'app_version_snapshot_toolset.dart';

class AppVersionSnapshot {
  /// (Output)
  /// List of agents in the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAgent>?>? agents;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<List<AppVersionSnapshotApp>?>? apps;
  /// (Output)
  /// List of examples in the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExample>?>? examples;
  /// (Output)
  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final pulumi.Input<List<AppVersionSnapshotGuardrail>?>? guardrails;
  /// (Output)
  /// List of available tools for the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final pulumi.Input<List<AppVersionSnapshotTool>?>? tools;
  /// (Output)
  /// List of toolsets for the agent.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolset>?>? toolsets;

  /// Creates a new [AppVersionSnapshot].
  /// [agents] (Output)
  /// [apps] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [examples] (Output)
  /// [guardrails] (Output)
  /// [tools] (Output)
  /// [toolsets] (Output)
  const AppVersionSnapshot({
    this.agents,
    this.apps,
    this.examples,
    this.guardrails,
    this.tools,
    this.toolsets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAgent>, List<Map<String, dynamic>>>(agents, (value) => pulumi.Input.encodeList<AppVersionSnapshotAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apps': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotApp>, List<Map<String, dynamic>>>(apps, (value) => pulumi.Input.encodeList<AppVersionSnapshotApp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'examples': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExample>, List<Map<String, dynamic>>>(examples, (value) => pulumi.Input.encodeList<AppVersionSnapshotExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guardrails': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrail>, List<Map<String, dynamic>>>(guardrails, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tools': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotTool>, List<Map<String, dynamic>>>(tools, (value) => pulumi.Input.encodeList<AppVersionSnapshotTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolsets': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolset>, List<Map<String, dynamic>>>(toolsets, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolset, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshot.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshot(
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAgent>(guardedValue, (value) => AppVersionSnapshotAgent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apps: (() { final guardedValue = map['apps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotApp>(guardedValue, (value) => AppVersionSnapshotApp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      examples: (() { final guardedValue = map['examples']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExample>(guardedValue, (value) => AppVersionSnapshotExample.fromMap((value as Map).cast<String, dynamic>()))); })(),
      guardrails: (() { final guardedValue = map['guardrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrail>(guardedValue, (value) => AppVersionSnapshotGuardrail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotTool>(guardedValue, (value) => AppVersionSnapshotTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolsets: (() { final guardedValue = map['toolsets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolset>(guardedValue, (value) => AppVersionSnapshotToolset.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
