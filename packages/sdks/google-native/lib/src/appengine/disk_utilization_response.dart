// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by disk usage. Only applicable in the App Engine flexible environment.
class DiskUtilizationResponse {
  /// Target bytes read per second.
  final pulumi.Input<int> targetReadBytesPerSecond;
  /// Target ops read per seconds.
  final pulumi.Input<int> targetReadOpsPerSecond;
  /// Target bytes written per second.
  final pulumi.Input<int> targetWriteBytesPerSecond;
  /// Target ops written per second.
  final pulumi.Input<int> targetWriteOpsPerSecond;

  /// Creates a new [DiskUtilizationResponse].
  /// [targetReadBytesPerSecond] Target bytes read per second.
  /// [targetReadOpsPerSecond] Target ops read per seconds.
  /// [targetWriteBytesPerSecond] Target bytes written per second.
  /// [targetWriteOpsPerSecond] Target ops written per second.
  const DiskUtilizationResponse({
    required this.targetReadBytesPerSecond,
    required this.targetReadOpsPerSecond,
    required this.targetWriteBytesPerSecond,
    required this.targetWriteOpsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReadBytesPerSecond': targetReadBytesPerSecond,
      'targetReadOpsPerSecond': targetReadOpsPerSecond,
      'targetWriteBytesPerSecond': targetWriteBytesPerSecond,
      'targetWriteOpsPerSecond': targetWriteOpsPerSecond,
    };
  }

  factory DiskUtilizationResponse.fromMap(Map<String, dynamic> map) {
    return DiskUtilizationResponse(
      targetReadBytesPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['targetReadBytesPerSecond'])),
      targetReadOpsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['targetReadOpsPerSecond'])),
      targetWriteBytesPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['targetWriteBytesPerSecond'])),
      targetWriteOpsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['targetWriteOpsPerSecond'])),
    );
  }
}
