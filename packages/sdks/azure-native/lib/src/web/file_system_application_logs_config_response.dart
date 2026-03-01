// ignore_for_file: unused_element, unnecessary_cast


/// Application logs to file system configuration.
class FileSystemApplicationLogsConfigResponse {
  /// Log level.
  final String? level;

  /// Creates a new [FileSystemApplicationLogsConfigResponse].
  /// [level] Log level.
  FileSystemApplicationLogsConfigResponse({
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
    };
  }

  factory FileSystemApplicationLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return FileSystemApplicationLogsConfigResponse(
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}

