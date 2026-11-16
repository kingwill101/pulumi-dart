// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_error_handling_setting_end_session_config.dart';
import 'app_version_snapshot_app_error_handling_setting_fallback_response_config.dart';

class AppVersionSnapshotAppErrorHandlingSetting {
  /// (Output)
  /// Configuration for ending the session in case of system errors (e.g. LLM
  /// errors).
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig>?>? endSessionConfigs;
  /// (Output)
  /// The strategy to use for error handling.
  /// Possible values:
  /// NONE
  /// FALLBACK_RESPONSE
  /// END_SESSION
  final pulumi.Input<String?>? errorHandlingStrategy;
  /// (Output)
  /// Configuration for handling fallback responses.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig>?>? fallbackResponseConfigs;

  /// Creates a new [AppVersionSnapshotAppErrorHandlingSetting].
  /// [endSessionConfigs] (Output)
  /// [errorHandlingStrategy] (Output)
  /// [fallbackResponseConfigs] (Output)
  const AppVersionSnapshotAppErrorHandlingSetting({
    this.endSessionConfigs,
    this.errorHandlingStrategy,
    this.fallbackResponseConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endSessionConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig>, List<Map<String, dynamic>>>(endSessionConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorHandlingStrategy': ?errorHandlingStrategy,
      'fallbackResponseConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig>, List<Map<String, dynamic>>>(fallbackResponseConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAppErrorHandlingSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppErrorHandlingSetting(
      endSessionConfigs: (() { final guardedValue = map['endSessionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig>(guardedValue, (value) => AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errorHandlingStrategy: (() { final guardedValue = map['errorHandlingStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallbackResponseConfigs: (() { final guardedValue = map['fallbackResponseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig>(guardedValue, (value) => AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
