// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesConsoleLog {
  /// Indicates whether to append log data to the existing log file.
  final pulumi.Input<String>? append;
  /// Defines the file path where channel logs will be written.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesConsoleLog].
  /// [append] Indicates whether to append log data to the existing log file.
  /// [file] Defines the file path where channel logs will be written.
  const DomainDevicesConsoleLog({
    this.append,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'file': file,
    };
  }

  factory DomainDevicesConsoleLog.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleLog(
      append: (() { final guardedValue = map['append']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: pulumi.Input.fromValue(map['file'] as String),
    );
  }
}

