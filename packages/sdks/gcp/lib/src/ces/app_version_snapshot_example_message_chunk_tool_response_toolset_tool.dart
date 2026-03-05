// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool {
  /// (Output)
  /// The tool ID to filter the tools to retrieve the schema for.
  final pulumi.Input<String>? toolId;
  /// (Output)
  /// The resource name of the Toolset from which this tool is derived.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? toolset;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool].
  /// [toolId] (Output)
  /// [toolset] (Output)
  AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool({
    this.toolId,
    this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolId': ?toolId,
      'toolset': ?toolset,
    };
  }

  factory AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool(
      toolId: (() { final guardedValue = map['toolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolset: (() { final guardedValue = map['toolset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

