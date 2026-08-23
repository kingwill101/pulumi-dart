// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseClusterStorageAutoscale {
  /// Whether storage autoscaling is enabled for the cluster.
  final pulumi.Input<bool> enabled;
  /// The amount of storage, in GiB, to add when autoscaling is triggered.
  final pulumi.Input<int>? incrementGib;
  /// The storage utilization percentage at which autoscaling is triggered.
  final pulumi.Input<int>? thresholdPercent;

  /// Creates a new [DatabaseClusterStorageAutoscale].
  /// [enabled] Whether storage autoscaling is enabled for the cluster.
  /// [incrementGib] The amount of storage, in GiB, to add when autoscaling is triggered.
  /// [thresholdPercent] The storage utilization percentage at which autoscaling is triggered.
  const DatabaseClusterStorageAutoscale({
    required this.enabled,
    this.incrementGib,
    this.thresholdPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'incrementGib': ?incrementGib,
      'thresholdPercent': ?thresholdPercent,
    };
  }

  factory DatabaseClusterStorageAutoscale.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterStorageAutoscale(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      incrementGib: (() { final guardedValue = map['incrementGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      thresholdPercent: (() { final guardedValue = map['thresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
