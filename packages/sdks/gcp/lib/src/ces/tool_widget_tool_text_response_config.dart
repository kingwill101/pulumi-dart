// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolWidgetToolTextResponseConfig {
  /// Optional. The static text response to return when type is STATIC.
  final pulumi.Input<String?>? staticText;
  /// Optional. Instruction for the LLM on how to generate the text response. Used as
  /// the description for the text response parameter if type is LLM_GENERATED.
  final pulumi.Input<String?>? textResponseInstruction;
  /// Optional. The strategy for providing the text response.
  /// Possible values:
  /// TYPE_UNSPECIFIED
  /// NONE
  /// LLM_GENERATED
  /// STATIC
  /// Possible values are: `TYPE_UNSPECIFIED`, `NONE`, `LLM_GENERATED`, `STATIC`.
  final pulumi.Input<String?>? type;

  /// Creates a new [ToolWidgetToolTextResponseConfig].
  /// [staticText] Optional. The static text response to return when type is STATIC.
  /// [textResponseInstruction] Optional. Instruction for the LLM on how to generate the text response. Used as
  /// [type] Optional. The strategy for providing the text response.
  const ToolWidgetToolTextResponseConfig({
    this.staticText,
    this.textResponseInstruction,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticText': ?staticText,
      'textResponseInstruction': ?textResponseInstruction,
      'type': ?type,
    };
  }

  factory ToolWidgetToolTextResponseConfig.fromMap(Map<String, dynamic> map) {
    return ToolWidgetToolTextResponseConfig(
      staticText: (() { final guardedValue = map['staticText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textResponseInstruction: (() { final guardedValue = map['textResponseInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
