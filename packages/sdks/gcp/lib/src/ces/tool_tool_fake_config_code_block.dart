// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolToolFakeConfigCodeBlock {
  /// Python code which will be invoked in tool fake mode.
  final pulumi.Input<String> pythonCode;

  /// Creates a new [ToolToolFakeConfigCodeBlock].
  /// [pythonCode] Python code which will be invoked in tool fake mode.
  const ToolToolFakeConfigCodeBlock({
    required this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pythonCode': pythonCode,
    };
  }

  factory ToolToolFakeConfigCodeBlock.fromMap(Map<String, dynamic> map) {
    return ToolToolFakeConfigCodeBlock(
      pythonCode: pulumi.Input.fromValue(map['pythonCode'] as String),
    );
  }
}
