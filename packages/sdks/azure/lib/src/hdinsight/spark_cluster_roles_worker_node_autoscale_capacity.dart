// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterRolesWorkerNodeAutoscaleCapacity {
  /// The maximum number of worker nodes to autoscale to based on the cluster's activity.
  final pulumi.Input<int> maxInstanceCount;
  /// The minimum number of worker nodes to autoscale to based on the cluster's activity.
  final pulumi.Input<int> minInstanceCount;

  /// Creates a new [SparkClusterRolesWorkerNodeAutoscaleCapacity].
  /// [maxInstanceCount] The maximum number of worker nodes to autoscale to based on the cluster's activity.
  /// [minInstanceCount] The minimum number of worker nodes to autoscale to based on the cluster's activity.
  const SparkClusterRolesWorkerNodeAutoscaleCapacity({
    required this.maxInstanceCount,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
    };
  }

  factory SparkClusterRolesWorkerNodeAutoscaleCapacity.fromMap(Map<String, dynamic> map) {
    return SparkClusterRolesWorkerNodeAutoscaleCapacity(
      maxInstanceCount: pulumi.Input.fromValue((map['maxInstanceCount'] as num).toInt()),
      minInstanceCount: pulumi.Input.fromValue((map['minInstanceCount'] as num).toInt()),
    );
  }
}
