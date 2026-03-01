// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSerialLog {
  /// Indicates whether to append log data to the existing log file.
  final String? append;
  /// Defines the file path where channel logs will be written.
  final String file;

  /// Creates a new [DomainDevicesSerialLog].
  /// [append] Indicates whether to append log data to the existing log file.
  /// [file] Defines the file path where channel logs will be written.
  DomainDevicesSerialLog({
    this.append,
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'file': file,
    };
  }

  factory DomainDevicesSerialLog.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialLog(
      append: map['append'] == null ? null : map['append'] as String,
      file: map['file'] as String,
    );
  }
}

