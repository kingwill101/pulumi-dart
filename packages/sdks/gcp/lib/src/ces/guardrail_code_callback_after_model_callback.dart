// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailCodeCallbackAfterModelCallback {
  /// Human-readable description of the callback.
  final pulumi.Input<String?>? description;
  /// Whether the callback is disabled. Disabled callbacks are ignored by the
  /// agent.
  final pulumi.Input<bool?>? disabled;
  /// If enabled, the callback will also be executed on intermediate model
  /// outputs. This setting only affects after model callback.
  /// **ENABLE WITH CAUTION**. Typically after model callback only needs to be
  /// executed after receiving all model responses. Enabling proactive execution
  /// may have negative implication on the execution cost and latency, and
  /// should only be enabled in rare situations.
  final pulumi.Input<bool?>? proactiveExecutionEnabled;
  /// The python code to execute for the callback.
  final pulumi.Input<String> pythonCode;

  /// Creates a new [GuardrailCodeCallbackAfterModelCallback].
  /// [description] Human-readable description of the callback.
  /// [disabled] Whether the callback is disabled. Disabled callbacks are ignored by the
  /// [proactiveExecutionEnabled] If enabled, the callback will also be executed on intermediate model
  /// [pythonCode] The python code to execute for the callback.
  const GuardrailCodeCallbackAfterModelCallback({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'proactiveExecutionEnabled': ?proactiveExecutionEnabled,
      'pythonCode': pythonCode,
    };
  }

  factory GuardrailCodeCallbackAfterModelCallback.fromMap(Map<String, dynamic> map) {
    return GuardrailCodeCallbackAfterModelCallback(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proactiveExecutionEnabled: (() { final guardedValue = map['proactiveExecutionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pythonCode: pulumi.Input.fromValue(map['pythonCode'] as String),
    );
  }
}
