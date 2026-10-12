// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_error_handling_settings_end_session_config.dart';
import 'app_error_handling_settings_fallback_response_config.dart';

class AppErrorHandlingSettings {
  /// Configuration for ending the session in case of system errors (e.g. LLM
  /// errors).
  /// Structure is documented below.
  final pulumi.Input<AppErrorHandlingSettingsEndSessionConfig?>? endSessionConfig;
  /// The strategy to use for error handling.
  /// Possible values:
  /// NONE
  /// FALLBACK_RESPONSE
  /// END_SESSION
  final pulumi.Input<String?>? errorHandlingStrategy;
  /// Configuration for handling fallback responses.
  /// Structure is documented below.
  final pulumi.Input<AppErrorHandlingSettingsFallbackResponseConfig?>? fallbackResponseConfig;

  /// Creates a new [AppErrorHandlingSettings].
  /// [endSessionConfig] Configuration for ending the session in case of system errors (e.g. LLM
  /// [errorHandlingStrategy] The strategy to use for error handling.
  /// [fallbackResponseConfig] Configuration for handling fallback responses.
  const AppErrorHandlingSettings({
    this.endSessionConfig,
    this.errorHandlingStrategy,
    this.fallbackResponseConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endSessionConfig': ?pulumi.Input.mapOptionalInputValue<AppErrorHandlingSettingsEndSessionConfig, Map<String, dynamic>>(endSessionConfig, (value) => value.toMap()),
      'errorHandlingStrategy': ?errorHandlingStrategy,
      'fallbackResponseConfig': ?pulumi.Input.mapOptionalInputValue<AppErrorHandlingSettingsFallbackResponseConfig, Map<String, dynamic>>(fallbackResponseConfig, (value) => value.toMap()),
    };
  }

  factory AppErrorHandlingSettings.fromMap(Map<String, dynamic> map) {
    return AppErrorHandlingSettings(
      endSessionConfig: (() { final guardedValue = map['endSessionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppErrorHandlingSettingsEndSessionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errorHandlingStrategy: (() { final guardedValue = map['errorHandlingStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallbackResponseConfig: (() { final guardedValue = map['fallbackResponseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppErrorHandlingSettingsFallbackResponseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
