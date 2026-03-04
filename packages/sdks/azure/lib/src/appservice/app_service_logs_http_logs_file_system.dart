// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceLogsHttpLogsFileSystem {
  /// The number of days to retain logs for.
  final pulumi.Input<int> retentionInDays;

  /// The maximum size in megabytes that HTTP log files can use before being removed.
  final pulumi.Input<int> retentionInMb;

  /// Creates a new [AppServiceLogsHttpLogsFileSystem].
  /// [retentionInDays] The number of days to retain logs for.
  /// [retentionInMb] The maximum size in megabytes that HTTP log files can use before being removed.
  AppServiceLogsHttpLogsFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory AppServiceLogsHttpLogsFileSystem.fromMap(Map<String, dynamic> map) {
    return AppServiceLogsHttpLogsFileSystem(
      retentionInDays: pulumi.Input.fromValue(map['retentionInDays'] as int),
      retentionInMb: pulumi.Input.fromValue(map['retentionInMb'] as int),
    );
  }
}
