// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_tool_fake_config_code_block.dart';

class ToolToolFakeConfig {
  /// Code block which will be executed instead of a real tool call.
  /// Structure is documented below.
  final pulumi.Input<ToolToolFakeConfigCodeBlock>? codeBlock;
  /// Whether the tool is using fake mode.
  final pulumi.Input<bool>? enableFakeMode;

  /// Creates a new [ToolToolFakeConfig].
  /// [codeBlock] Code block which will be executed instead of a real tool call.
  /// [enableFakeMode] Whether the tool is using fake mode.
  const ToolToolFakeConfig({
    this.codeBlock,
    this.enableFakeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeBlock': ?pulumi.Input.mapOptionalInputValue<ToolToolFakeConfigCodeBlock, Map<String, dynamic>>(codeBlock, (value) => value.toMap()),
      'enableFakeMode': ?enableFakeMode,
    };
  }

  factory ToolToolFakeConfig.fromMap(Map<String, dynamic> map) {
    return ToolToolFakeConfig(
      codeBlock: (() { final guardedValue = map['codeBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolToolFakeConfigCodeBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableFakeMode: (() { final guardedValue = map['enableFakeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
