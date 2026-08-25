// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool.dart';

/// {@template pulumi_diagflow_cx_tool_version_cx_tool_version_args_doc}
/// The set of arguments for CxToolVersion.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_tool_version_cx_tool_version_args_doc}
class CxToolVersionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the tool version.
  final pulumi.Input<String> displayName;
  /// The tool to create a Version for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/tools/&lt;Tool ID&gt;.
  final pulumi.Input<String> parent;
  /// Snapshot of the tool to be associated with this version.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionTool> tool;

  /// Creates a new [CxToolVersionArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the tool version.
  /// [parent] The tool to create a Version for.
  /// [tool] Snapshot of the tool to be associated with this version.
  const CxToolVersionArgs({
    this.deletionPolicy,
    required this.displayName,
    required this.parent,
    required this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'parent': parent,
      'tool': pulumi.Input.mapInputValue<CxToolVersionTool, Map<String, dynamic>>(tool, (value) => value.toMap()),
    };
  }

  factory CxToolVersionArgs.fromMap(Map<String, dynamic> map) {
    return CxToolVersionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      tool: pulumi.Input.fromValue(CxToolVersionTool.fromMap((map['tool']! as Map).cast<String, dynamic>())),
    );
  }
}
