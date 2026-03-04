// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk_tool_response_toolset_tool.dart';

class AppVersionSnapshotExampleMessageChunkToolResponse {
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;

  /// (Output)
  /// The matching ID of the tool call the response is for.
  final pulumi.Input<String>? id;

  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final pulumi.Input<String>? response;

  /// (Output)
  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final pulumi.Input<String>? tool;

  /// (Output)
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final pulumi.Input<
    List<AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool>
  >?
  toolsetTools;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkToolResponse].
  /// [displayName] The display name of the app version.
  /// [id] (Output)
  /// [response] (Output)
  /// [tool] (Output)
  /// [toolsetTools] (Output)
  AppVersionSnapshotExampleMessageChunkToolResponse({
    this.displayName,
    this.id,
    this.response,
    this.tool,
    this.toolsetTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'response': ?response,
      'tool': ?tool,
      'toolsetTools':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool>,
            List<Map<String, dynamic>>
          >(
            toolsetTools,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AppVersionSnapshotExampleMessageChunkToolResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotExampleMessageChunkToolResponse(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      response: (() {
        final guardedValue = map['response'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tool: (() {
        final guardedValue = map['tool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      toolsetTools: (() {
        final guardedValue = map['toolsetTools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
