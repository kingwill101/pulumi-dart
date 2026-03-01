// ignore_for_file: unused_element, unnecessary_cast


class AppVersionSnapshotExampleMessageChunkToolCallToolsetTool {
  /// (Output)
  /// The tool ID to filter the tools to retrieve the schema for.
  final String? toolId;
  /// (Output)
  /// The resource name of the Toolset from which this tool is derived.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? toolset;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkToolCallToolsetTool].
  /// [toolId] (Output)
  /// [toolset] (Output)
  AppVersionSnapshotExampleMessageChunkToolCallToolsetTool({
    this.toolId,
    this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolId': ?toolId,
      'toolset': ?toolset,
    };
  }

  factory AppVersionSnapshotExampleMessageChunkToolCallToolsetTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkToolCallToolsetTool(
      toolId: map['toolId'] == null ? null : map['toolId'] as String,
      toolset: map['toolset'] == null ? null : map['toolset'] as String,
    );
  }
}

