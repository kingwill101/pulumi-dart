// ignore_for_file: unused_element, unnecessary_cast


class AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool {
  /// (Output)
  /// The tool ID to filter the tools to retrieve the schema for.
  final String? toolId;
  /// (Output)
  /// The resource name of the Toolset from which this tool is derived.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? toolset;

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
      toolId: map['toolId'] == null ? null : map['toolId'] as String,
      toolset: map['toolset'] == null ? null : map['toolset'] as String,
    );
  }
}

