// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The throughput capacity configuration for each partition.
class CapacityResponse {
  /// Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  final pulumi.Input<int> publishMibPerSec;
  /// Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 32.
  final pulumi.Input<int> subscribeMibPerSec;

  /// Creates a new [CapacityResponse].
  /// [publishMibPerSec] Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  /// [subscribeMibPerSec] Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 32.
  const CapacityResponse({
    required this.publishMibPerSec,
    required this.subscribeMibPerSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMibPerSec': publishMibPerSec,
      'subscribeMibPerSec': subscribeMibPerSec,
    };
  }

  factory CapacityResponse.fromMap(Map<String, dynamic> map) {
    return CapacityResponse(
      publishMibPerSec: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['publishMibPerSec'])),
      subscribeMibPerSec: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['subscribeMibPerSec'])),
    );
  }
}
