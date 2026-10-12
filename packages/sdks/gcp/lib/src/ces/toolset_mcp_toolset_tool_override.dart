// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetMcpToolsetToolOverride {
  /// The description override for the tool.
  final pulumi.Input<String?>? descriptionOverride;
  /// The name override for the tool.
  final pulumi.Input<String?>? nameOverride;
  /// The name of the tool to be overridden.
  final pulumi.Input<String> tool;

  /// Creates a new [ToolsetMcpToolsetToolOverride].
  /// [descriptionOverride] The description override for the tool.
  /// [nameOverride] The name override for the tool.
  /// [tool] The name of the tool to be overridden.
  const ToolsetMcpToolsetToolOverride({
    this.descriptionOverride,
    this.nameOverride,
    required this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionOverride': ?descriptionOverride,
      'nameOverride': ?nameOverride,
      'tool': tool,
    };
  }

  factory ToolsetMcpToolsetToolOverride.fromMap(Map<String, dynamic> map) {
    return ToolsetMcpToolsetToolOverride(
      descriptionOverride: (() { final guardedValue = map['descriptionOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameOverride: (() { final guardedValue = map['nameOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tool: pulumi.Input.fromValue(map['tool'] as String),
    );
  }
}
