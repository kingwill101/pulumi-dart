// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotGuardrailActionGenerativeAnswer {
  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final pulumi.Input<String>? prompt;

  /// Creates a new [AppVersionSnapshotGuardrailActionGenerativeAnswer].
  /// [prompt] (Output)
  const AppVersionSnapshotGuardrailActionGenerativeAnswer({
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prompt': ?prompt,
    };
  }

  factory AppVersionSnapshotGuardrailActionGenerativeAnswer.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailActionGenerativeAnswer(
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
