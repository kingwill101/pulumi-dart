// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExampleMessageChunkToolCallToolsetTool {
  /// The tool ID to filter the tools to retrieve the schema for.
  final pulumi.Input<String>? toolId;
  /// The resource name of the Toolset from which this tool is derived.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String> toolset;

  /// Creates a new [ExampleMessageChunkToolCallToolsetTool].
  /// [toolId] The tool ID to filter the tools to retrieve the schema for.
  /// [toolset] The resource name of the Toolset from which this tool is derived.
  ExampleMessageChunkToolCallToolsetTool({
    this.toolId,
    required this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolId': ?toolId,
      'toolset': toolset,
    };
  }

  factory ExampleMessageChunkToolCallToolsetTool.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkToolCallToolsetTool(
      toolId: map['toolId'] == null ? null : (map['toolId'] as String).input(),
      toolset: (map['toolset'] as String).input(),
    );
  }
}

