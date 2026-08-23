// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseClusterStorageAutoscale {
  /// Whether storage autoscaling is enabled for the cluster.
  final pulumi.Input<bool> enabled;
  /// The amount of storage, in GiB, to add when autoscaling is triggered.
  final pulumi.Input<int> incrementGib;
  /// The storage utilization percentage at which autoscaling is triggered.
  final pulumi.Input<int> thresholdPercent;

  /// Creates a new [GetDatabaseClusterStorageAutoscale].
  /// [enabled] Whether storage autoscaling is enabled for the cluster.
  /// [incrementGib] The amount of storage, in GiB, to add when autoscaling is triggered.
  /// [thresholdPercent] The storage utilization percentage at which autoscaling is triggered.
  const GetDatabaseClusterStorageAutoscale({
    required this.enabled,
    required this.incrementGib,
    required this.thresholdPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'incrementGib': incrementGib,
      'thresholdPercent': thresholdPercent,
    };
  }

  factory GetDatabaseClusterStorageAutoscale.fromMap(Map<String, dynamic> map) {
    return GetDatabaseClusterStorageAutoscale(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      incrementGib: pulumi.Input.fromValue(map['incrementGib'] as int),
      thresholdPercent: pulumi.Input.fromValue(map['thresholdPercent'] as int),
    );
  }
}
