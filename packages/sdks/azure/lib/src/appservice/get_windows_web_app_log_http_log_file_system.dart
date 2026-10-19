// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppLogHttpLogFileSystem {
  /// The retention period in days.
  final pulumi.Input<int> retentionInDays;
  /// The maximum size in megabytes that log files can use.
  final pulumi.Input<int> retentionInMb;

  /// Creates a new [GetWindowsWebAppLogHttpLogFileSystem].
  /// [retentionInDays] The retention period in days.
  /// [retentionInMb] The maximum size in megabytes that log files can use.
  const GetWindowsWebAppLogHttpLogFileSystem({
    required this.retentionInDays,
    required this.retentionInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'retentionInMb': retentionInMb,
    };
  }

  factory GetWindowsWebAppLogHttpLogFileSystem.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLogHttpLogFileSystem(
      retentionInDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retentionInDays'])),
      retentionInMb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retentionInMb'])),
    );
  }
}
