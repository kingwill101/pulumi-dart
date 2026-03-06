// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesParallelLog {
  /// Indicates whether to append log data to the existing log file.
  final pulumi.Input<String>? append;
  /// Defines the file path where channel logs will be written.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesParallelLog].
  /// [append] Indicates whether to append log data to the existing log file.
  /// [file] Defines the file path where channel logs will be written.
  const DomainDevicesParallelLog({
    this.append,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'file': file,
    };
  }

  factory DomainDevicesParallelLog.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelLog(
      append: (() { final guardedValue = map['append']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: pulumi.Input.fromValue(map['file'] as String),
    );
  }
}

