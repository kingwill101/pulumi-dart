// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotLogsHttpLogsFileSystem {
  /// The number of days to retain logs for.
  final pulumi.Input<int> retentionInDays;
  /// The maximum size in megabytes that HTTP log files can use before being removed.
  final pulumi.Input<int> retentionInMb;

  /// Creates a new [SlotLogsHttpLogsFileSystem].
  /// [retentionInDays] The number of days to retain logs for.
  /// [retentionInMb] The maximum size in megabytes that HTTP log files can use before being removed.
  const SlotLogsHttpLogsFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory SlotLogsHttpLogsFileSystem.fromMap(Map<String, dynamic> map) {
    return SlotLogsHttpLogsFileSystem(
      retentionInDays: pulumi.Input.fromValue(map['retentionInDays'] as int),
      retentionInMb: pulumi.Input.fromValue(map['retentionInMb'] as int),
    );
  }
}

