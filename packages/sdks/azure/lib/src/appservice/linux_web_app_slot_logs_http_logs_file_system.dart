// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotLogsHttpLogsFileSystem {
  /// The retention period in days. A values of `0` means no retention.
  final pulumi.Input<int> retentionInDays;
  /// The maximum size in megabytes that log files can use.
  final pulumi.Input<int> retentionInMb;

  /// Creates a new [LinuxWebAppSlotLogsHttpLogsFileSystem].
  /// [retentionInDays] The retention period in days. A values of `0` means no retention.
  /// [retentionInMb] The maximum size in megabytes that log files can use.
  LinuxWebAppSlotLogsHttpLogsFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory LinuxWebAppSlotLogsHttpLogsFileSystem.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogsHttpLogsFileSystem(
      retentionInDays: (map['retentionInDays'] as int).input(),
      retentionInMb: (map['retentionInMb'] as int).input(),
    );
  }
}

