// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_code_callback_after_agent_callback.dart';
import 'app_version_snapshot_guardrail_code_callback_after_model_callback.dart';
import 'app_version_snapshot_guardrail_code_callback_before_agent_callback.dart';
import 'app_version_snapshot_guardrail_code_callback_before_model_callback.dart';

class AppVersionSnapshotGuardrailCodeCallback {
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback>>? afterAgentCallbacks;
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback>>? afterModelCallbacks;
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback>>? beforeAgentCallbacks;
  /// (Output)
  /// A callback defines the custom logic to be executed at various stages of
  /// agent interaction.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback>>? beforeModelCallbacks;

  /// Creates a new [AppVersionSnapshotGuardrailCodeCallback].
  /// [afterAgentCallbacks] (Output)
  /// [afterModelCallbacks] (Output)
  /// [beforeAgentCallbacks] (Output)
  /// [beforeModelCallbacks] (Output)
  const AppVersionSnapshotGuardrailCodeCallback({
    this.afterAgentCallbacks,
    this.afterModelCallbacks,
    this.beforeAgentCallbacks,
    this.beforeModelCallbacks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterAgentCallbacks': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback>, List<Map<String, dynamic>>>(afterAgentCallbacks, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback, Map<String, dynamic>>(value, (value) => value.toMap())),
      'afterModelCallbacks': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback>, List<Map<String, dynamic>>>(afterModelCallbacks, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback, Map<String, dynamic>>(value, (value) => value.toMap())),
      'beforeAgentCallbacks': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback>, List<Map<String, dynamic>>>(beforeAgentCallbacks, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback, Map<String, dynamic>>(value, (value) => value.toMap())),
      'beforeModelCallbacks': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback>, List<Map<String, dynamic>>>(beforeModelCallbacks, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotGuardrailCodeCallback.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailCodeCallback(
      afterAgentCallbacks: (() { final guardedValue = map['afterAgentCallbacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback>(guardedValue, (value) => AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback.fromMap((value as Map).cast<String, dynamic>()))); })(),
      afterModelCallbacks: (() { final guardedValue = map['afterModelCallbacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback>(guardedValue, (value) => AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback.fromMap((value as Map).cast<String, dynamic>()))); })(),
      beforeAgentCallbacks: (() { final guardedValue = map['beforeAgentCallbacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback>(guardedValue, (value) => AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback.fromMap((value as Map).cast<String, dynamic>()))); })(),
      beforeModelCallbacks: (() { final guardedValue = map['beforeModelCallbacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback>(guardedValue, (value) => AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

