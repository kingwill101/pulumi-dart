// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotGuardrailActionRespondImmediatelyResponse {
  /// (Output)
  /// Whether summarization is disabled.
  final pulumi.Input<bool?>? disabled;
  /// (Output)
  /// Text for the agent to respond with.
  final pulumi.Input<String?>? text;

  /// Creates a new [AppVersionSnapshotGuardrailActionRespondImmediatelyResponse].
  /// [disabled] (Output)
  /// [text] (Output)
  const AppVersionSnapshotGuardrailActionRespondImmediatelyResponse({
    this.disabled,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'text': ?text,
    };
  }

  factory AppVersionSnapshotGuardrailActionRespondImmediatelyResponse.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailActionRespondImmediatelyResponse(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
