// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk_tool_call_toolset_tool.dart';

class AppVersionSnapshotExampleMessageChunkToolCall {
  /// (Output)
  /// The input parameters and values for the tool in JSON object format.
  final pulumi.Input<String>? args;
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// The matching ID of the tool call the response is for.
  final pulumi.Input<String>? id;
  /// (Output)
  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final pulumi.Input<String>? tool;
  /// (Output)
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExampleMessageChunkToolCallToolsetTool>>? toolsetTools;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkToolCall].
  /// [args] (Output)
  /// [displayName] The display name of the app version.
  /// [id] (Output)
  /// [tool] (Output)
  /// [toolsetTools] (Output)
  AppVersionSnapshotExampleMessageChunkToolCall({
    this.args,
    this.displayName,
    this.id,
    this.tool,
    this.toolsetTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'displayName': ?displayName,
      'id': ?id,
      'tool': ?tool,
      'toolsetTools': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExampleMessageChunkToolCallToolsetTool>, List<Map<String, dynamic>>>(toolsetTools, (value) => pulumi.Input.encodeList<AppVersionSnapshotExampleMessageChunkToolCallToolsetTool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotExampleMessageChunkToolCall.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkToolCall(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolsetTools: (() { final guardedValue = map['toolsetTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunkToolCallToolsetTool>(guardedValue, (value) => AppVersionSnapshotExampleMessageChunkToolCallToolsetTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

