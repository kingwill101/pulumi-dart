// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelLog {
  /// Indicates whether to append log data to the existing log file.
  final pulumi.Input<String>? append;
  /// Defines the file path where channel logs will be written.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesChannelLog].
  /// [append] Indicates whether to append log data to the existing log file.
  /// [file] Defines the file path where channel logs will be written.
  DomainDevicesChannelLog({
    this.append,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'file': file,
    };
  }

  factory DomainDevicesChannelLog.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelLog(
      append: map['append'] == null ? null : (map['append'] as String).input(),
      file: (map['file'] as String).input(),
    );
  }
}

