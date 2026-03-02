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
  AppVersionSnapshotGuardrailCodeCallback({
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
      afterAgentCallbacks: map['afterAgentCallbacks'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback>(map['afterAgentCallbacks']!, (value) => AppVersionSnapshotGuardrailCodeCallbackAfterAgentCallback.fromMap((value as Map).cast<String, dynamic>()))).input(),
      afterModelCallbacks: map['afterModelCallbacks'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback>(map['afterModelCallbacks']!, (value) => AppVersionSnapshotGuardrailCodeCallbackAfterModelCallback.fromMap((value as Map).cast<String, dynamic>()))).input(),
      beforeAgentCallbacks: map['beforeAgentCallbacks'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback>(map['beforeAgentCallbacks']!, (value) => AppVersionSnapshotGuardrailCodeCallbackBeforeAgentCallback.fromMap((value as Map).cast<String, dynamic>()))).input(),
      beforeModelCallbacks: map['beforeModelCallbacks'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback>(map['beforeModelCallbacks']!, (value) => AppVersionSnapshotGuardrailCodeCallbackBeforeModelCallback.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

