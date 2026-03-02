// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailActionRespondImmediatelyResponse {
  /// Whether the response is disabled. Disabled responses are not used by the
  /// agent.
  final pulumi.Input<bool>? disabled;
  /// Text for the agent to respond with.
  final pulumi.Input<String> text;

  /// Creates a new [GuardrailActionRespondImmediatelyResponse].
  /// [disabled] Whether the response is disabled. Disabled responses are not used by the
  /// [text] Text for the agent to respond with.
  GuardrailActionRespondImmediatelyResponse({
    this.disabled,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'text': text,
    };
  }

  factory GuardrailActionRespondImmediatelyResponse.fromMap(Map<String, dynamic> map) {
    return GuardrailActionRespondImmediatelyResponse(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      text: (map['text'] as String).input(),
    );
  }
}

