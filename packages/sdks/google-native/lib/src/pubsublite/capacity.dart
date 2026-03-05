// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The throughput capacity configuration for each partition.
class Capacity {
  /// Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  final pulumi.Input<int>? publishMibPerSec;
  /// Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 32.
  final pulumi.Input<int>? subscribeMibPerSec;

  /// Creates a new [Capacity].
  /// [publishMibPerSec] Publish throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 16.
  /// [subscribeMibPerSec] Subscribe throughput capacity per partition in MiB/s. Must be &gt;= 4 and &lt;= 32.
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
      publishMibPerSec: (() { final guardedValue = map['publishMibPerSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subscribeMibPerSec: (() { final guardedValue = map['subscribeMibPerSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

