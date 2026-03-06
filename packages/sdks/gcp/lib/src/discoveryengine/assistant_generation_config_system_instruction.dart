// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssistantGenerationConfigSystemInstruction {
  /// Additional system instruction that will be added to the default system instruction.
  final pulumi.Input<String>? additionalSystemInstruction;

  /// Creates a new [AssistantGenerationConfigSystemInstruction].
  /// [additionalSystemInstruction] Additional system instruction that will be added to the default system instruction.
  const AssistantGenerationConfigSystemInstruction({
    this.additionalSystemInstruction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSystemInstruction': ?additionalSystemInstruction,
    };
  }

  factory AssistantGenerationConfigSystemInstruction.fromMap(Map<String, dynamic> map) {
    return AssistantGenerationConfigSystemInstruction(
      additionalSystemInstruction: (() { final guardedValue = map['additionalSystemInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

