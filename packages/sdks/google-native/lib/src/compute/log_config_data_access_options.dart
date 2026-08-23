// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_data_access_options_log_mode.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptions {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<LogConfigDataAccessOptionsLogMode>? logMode;

  /// Creates a new [LogConfigDataAccessOptions].
  /// [logMode] This is deprecated and has no effect. Do not use.
  const LogConfigDataAccessOptions({
    this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': ?pulumi.Input.mapOptionalInputValue<LogConfigDataAccessOptionsLogMode, String>(logMode, (value) => value.wireValue),
    };
  }

  factory LogConfigDataAccessOptions.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptions(
      logMode: (() { final guardedValue = map['logMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogConfigDataAccessOptionsLogMode.fromValue(guardedValue as String)); })(),
    );
  }
}
