// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_code_callback_after_agent_callback.dart';
import 'guardrail_code_callback_after_model_callback.dart';
import 'guardrail_code_callback_before_agent_callback.dart';
import 'guardrail_code_callback_before_model_callback.dart';

class GuardrailCodeCallback {
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<GuardrailCodeCallbackAfterAgentCallback>? afterAgentCallback;
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<GuardrailCodeCallbackAfterModelCallback>? afterModelCallback;
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<GuardrailCodeCallbackBeforeAgentCallback>? beforeAgentCallback;
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<GuardrailCodeCallbackBeforeModelCallback>? beforeModelCallback;

  /// Creates a new [GuardrailCodeCallback].
  /// [afterAgentCallback] A callback defines the custom logic to be executed at various stages of
  /// [afterModelCallback] A callback defines the custom logic to be executed at various stages of
  /// [beforeAgentCallback] A callback defines the custom logic to be executed at various stages of
  /// [beforeModelCallback] A callback defines the custom logic to be executed at various stages of
  GuardrailCodeCallback({
    this.afterAgentCallback,
    this.afterModelCallback,
    this.beforeAgentCallback,
    this.beforeModelCallback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterAgentCallback': ?pulumi.Input.mapOptionalInputValue<GuardrailCodeCallbackAfterAgentCallback, Map<String, dynamic>>(afterAgentCallback, (value) => value.toMap()),
      'afterModelCallback': ?pulumi.Input.mapOptionalInputValue<GuardrailCodeCallbackAfterModelCallback, Map<String, dynamic>>(afterModelCallback, (value) => value.toMap()),
      'beforeAgentCallback': ?pulumi.Input.mapOptionalInputValue<GuardrailCodeCallbackBeforeAgentCallback, Map<String, dynamic>>(beforeAgentCallback, (value) => value.toMap()),
      'beforeModelCallback': ?pulumi.Input.mapOptionalInputValue<GuardrailCodeCallbackBeforeModelCallback, Map<String, dynamic>>(beforeModelCallback, (value) => value.toMap()),
    };
  }

  factory GuardrailCodeCallback.fromMap(Map<String, dynamic> map) {
    return GuardrailCodeCallback(
      afterAgentCallback: (() { final guardedValue = map['afterAgentCallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailCodeCallbackAfterAgentCallback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      afterModelCallback: (() { final guardedValue = map['afterModelCallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailCodeCallbackAfterModelCallback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      beforeAgentCallback: (() { final guardedValue = map['beforeAgentCallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailCodeCallbackBeforeAgentCallback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      beforeModelCallback: (() { final guardedValue = map['beforeModelCallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailCodeCallbackBeforeModelCallback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

