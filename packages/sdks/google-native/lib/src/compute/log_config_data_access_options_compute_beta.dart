// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_data_access_options_log_mode_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsLogModeComputeBeta>? logMode;

  /// Creates a new [LogConfigDataAccessOptionsComputeBeta].
  /// [logMode] This is deprecated and has no effect. Do not use.
  const LogConfigDataAccessOptionsComputeBeta({
    this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': ?pulumi.Input.mapOptionalInputValue<LogConfigDataAccessOptionsLogModeComputeBeta, String>(logMode, (value) => value.wireValue),
    };
  }

  factory LogConfigDataAccessOptionsComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsComputeBeta(
      logMode: (() { final guardedValue = map['logMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogConfigDataAccessOptionsLogModeComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}
