// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailCodeCallbackBeforeAgentCallback {
  /// Human-readable description of the callback.
  final pulumi.Input<String>? description;
  /// Whether the callback is disabled. Disabled callbacks are ignored by the
  /// agent.
  final pulumi.Input<bool>? disabled;
  /// The python code to execute for the callback.
  final pulumi.Input<String> pythonCode;

  /// Creates a new [GuardrailCodeCallbackBeforeAgentCallback].
  /// [description] Human-readable description of the callback.
  /// [disabled] Whether the callback is disabled. Disabled callbacks are ignored by the
  /// [pythonCode] The python code to execute for the callback.
  const GuardrailCodeCallbackBeforeAgentCallback({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'pythonCode': pythonCode,
    };
  }

  factory GuardrailCodeCallbackBeforeAgentCallback.fromMap(Map<String, dynamic> map) {
    return GuardrailCodeCallbackBeforeAgentCallback(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pythonCode: pulumi.Input.fromValue(map['pythonCode'] as String),
    );
  }
}
