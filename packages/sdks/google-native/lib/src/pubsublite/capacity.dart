// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The throughput capacity configuration for each partition.
class Capacity {
  /// Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  final pulumi.Input<int>? publishMibPerSec;
  /// Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.
  final pulumi.Input<int>? subscribeMibPerSec;

  /// Creates a new [Capacity].
  /// [publishMibPerSec] Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  /// [subscribeMibPerSec] Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.
  Capacity({
    this.publishMibPerSec,
    this.subscribeMibPerSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMibPerSec': ?publishMibPerSec,
      'subscribeMibPerSec': ?subscribeMibPerSec,
    };
  }

  factory Capacity.fromMap(Map<String, dynamic> map) {
    return Capacity(
      publishMibPerSec: map['publishMibPerSec'] == null ? null : (map['publishMibPerSec']! as int).input(),
      subscribeMibPerSec: map['subscribeMibPerSec'] == null ? null : (map['subscribeMibPerSec']! as int).input(),
    );
  }
}

