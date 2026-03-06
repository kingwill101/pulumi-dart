// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool.dart';

/// {@template pulumi_diagflow_cx_tool_version_cx_tool_version_args_doc}
/// The set of arguments for CxToolVersion.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_tool_version_cx_tool_version_args_doc}
class CxToolVersionArgs {
  /// The display name of the tool version.
  final pulumi.Input<String> displayName;
  /// The tool to create a Version for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/tools/&lt;Tool ID&gt;.
  final pulumi.Input<String> parent;
  /// Snapshot of the tool to be associated with this version.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionTool> tool;

  /// Creates a new [CxToolVersionArgs].
  /// [displayName] The display name of the tool version.
  /// [parent] The tool to create a Version for.
  /// [tool] Snapshot of the tool to be associated with this version.
  const CxToolVersionArgs({
    required this.displayName,
    required this.parent,
    required this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'parent': parent,
      'tool': pulumi.Input.mapInputValue<CxToolVersionTool, Map<String, dynamic>>(tool, (value) => value.toMap()),
    };
  }

  factory CxToolVersionArgs.fromMap(Map<String, dynamic> map) {
    return CxToolVersionArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      tool: pulumi.Input.fromValue(CxToolVersionTool.fromMap((map['tool']! as Map).cast<String, dynamic>())),
    );
  }
}

