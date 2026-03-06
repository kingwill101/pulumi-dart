// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotLogsHttpLogsFileSystem {
  /// The retention period in days. A values of `0` means no retention.
  final pulumi.Input<int> retentionInDays;
  /// The maximum size in megabytes that log files can use.
  final pulumi.Input<int> retentionInMb;

  /// Creates a new [WindowsWebAppSlotLogsHttpLogsFileSystem].
  /// [retentionInDays] The retention period in days. A values of `0` means no retention.
  /// [retentionInMb] The maximum size in megabytes that log files can use.
  const WindowsWebAppSlotLogsHttpLogsFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory WindowsWebAppSlotLogsHttpLogsFileSystem.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogsHttpLogsFileSystem(
      retentionInDays: pulumi.Input.fromValue(map['retentionInDays'] as int),
      retentionInMb: pulumi.Input.fromValue(map['retentionInMb'] as int),
    );
  }
}

