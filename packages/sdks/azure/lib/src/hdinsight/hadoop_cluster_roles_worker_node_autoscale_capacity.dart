// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterRolesWorkerNodeAutoscaleCapacity {
  /// The maximum number of worker nodes to autoscale to based on the cluster's activity.
  final pulumi.Input<int> maxInstanceCount;
  /// The minimum number of worker nodes to autoscale to based on the cluster's activity.
  final pulumi.Input<int> minInstanceCount;

  /// Creates a new [HadoopClusterRolesWorkerNodeAutoscaleCapacity].
  /// [maxInstanceCount] The maximum number of worker nodes to autoscale to based on the cluster's activity.
  /// [minInstanceCount] The minimum number of worker nodes to autoscale to based on the cluster's activity.
  const HadoopClusterRolesWorkerNodeAutoscaleCapacity({
    required this.maxInstanceCount,
    required this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
    };
  }

  factory HadoopClusterRolesWorkerNodeAutoscaleCapacity.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesWorkerNodeAutoscaleCapacity(
      maxInstanceCount: pulumi.Input.fromValue((map['maxInstanceCount'] as num).toInt()),
      minInstanceCount: pulumi.Input.fromValue((map['minInstanceCount'] as num).toInt()),
    );
  }
}
