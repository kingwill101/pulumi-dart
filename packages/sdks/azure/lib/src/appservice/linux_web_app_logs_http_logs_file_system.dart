// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppLogsHttpLogsFileSystem {
  /// The retention period in days. A value of `0` means no retention.
  final int retentionInDays;
  /// The maximum size in megabytes that log files can use.
  final int retentionInMb;

  /// Creates a new [LinuxWebAppLogsHttpLogsFileSystem].
  /// [retentionInDays] The retention period in days. A value of `0` means no retention.
  /// [retentionInMb] The maximum size in megabytes that log files can use.
  LinuxWebAppLogsHttpLogsFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory LinuxWebAppLogsHttpLogsFileSystem.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppLogsHttpLogsFileSystem(
      retentionInDays: map['retentionInDays'] as int,
      retentionInMb: map['retentionInMb'] as int,
    );
  }
}

