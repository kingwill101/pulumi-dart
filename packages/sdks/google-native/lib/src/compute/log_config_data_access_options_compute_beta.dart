// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_data_access_options_log_mode_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsLogModeComputeBeta>? logMode;

  /// Creates a new [LogConfigDataAccessOptionsComputeBeta].
  /// [logMode] This is deprecated and has no effect. Do not use.
  LogConfigDataAccessOptionsComputeBeta({
    this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': ?pulumi.Input.mapOptionalInputValue<LogConfigDataAccessOptionsLogModeComputeBeta, String>(logMode, (value) => value.value),
    };
  }

  factory LogConfigDataAccessOptionsComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsComputeBeta(
      logMode: map['logMode'] == null ? null : (LogConfigDataAccessOptionsLogModeComputeBeta.fromValue(map['logMode'] as String)).input(),
    );
  }
}

