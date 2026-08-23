// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mcp_server_tool_annotation.dart';

class GetMcpServerTool {
  /// Additional tool information.
  final pulumi.Input<List<GetMcpServerToolAnnotation>> annotations;
  /// The description of the tool.
  final pulumi.Input<String> description;
  /// The name of the tool.
  final pulumi.Input<String> name;

  /// Creates a new [GetMcpServerTool].
  /// [annotations] Additional tool information.
  /// [description] The description of the tool.
  /// [name] The name of the tool.
  const GetMcpServerTool({
    required this.annotations,
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': pulumi.Input.mapInputValue<List<GetMcpServerToolAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<GetMcpServerToolAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'name': name,
    };
  }

  factory GetMcpServerTool.fromMap(Map<String, dynamic> map) {
    return GetMcpServerTool(
      annotations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMcpServerToolAnnotation>(map['annotations']!, (value) => GetMcpServerToolAnnotation.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
