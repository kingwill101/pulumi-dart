// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetToolFakeConfigCodeBlock {
  /// Python code which will be invoked in tool fake mode.
  final pulumi.Input<String> pythonCode;

  /// Creates a new [ToolsetToolFakeConfigCodeBlock].
  /// [pythonCode] Python code which will be invoked in tool fake mode.
  const ToolsetToolFakeConfigCodeBlock({
    required this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pythonCode': pythonCode,
    };
  }

  factory ToolsetToolFakeConfigCodeBlock.fromMap(Map<String, dynamic> map) {
    return ToolsetToolFakeConfigCodeBlock(
      pythonCode: pulumi.Input.fromValue(map['pythonCode'] as String),
    );
  }
}
