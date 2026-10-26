// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorFreeFormContext {
  /// Optional. Free form text input to LLM.
  final pulumi.Input<String?>? text;

  /// Creates a new [GeneratorFreeFormContext].
  /// [text] Optional. Free form text input to LLM.
  const GeneratorFreeFormContext({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text,
    };
  }

  factory GeneratorFreeFormContext.fromMap(Map<String, dynamic> map) {
    return GeneratorFreeFormContext(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
