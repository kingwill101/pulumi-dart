// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_level.dart';

/// Application logs to file system configuration.
class FileSystemApplicationLogsConfig {
  /// Log level.
  final pulumi.Input<LogLevel>? level;

  /// Creates a new [FileSystemApplicationLogsConfig].
  /// [level] Log level.
  const FileSystemApplicationLogsConfig({
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?pulumi.Input.mapOptionalInputValue<LogLevel, String>(level, (value) => value.wireValue),
    };
  }

  factory FileSystemApplicationLogsConfig.fromMap(Map<String, dynamic> map) {
    return FileSystemApplicationLogsConfig(
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogLevel.fromValue(guardedValue as String)); })(),
    );
  }
}

