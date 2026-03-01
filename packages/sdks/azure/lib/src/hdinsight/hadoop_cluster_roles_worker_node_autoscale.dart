// ignore_for_file: unused_element, unnecessary_cast

import 'hadoop_cluster_roles_worker_node_autoscale_capacity.dart';
import 'hadoop_cluster_roles_worker_node_autoscale_recurrence.dart';

class HadoopClusterRolesWorkerNodeAutoscale {
  /// A `capacity` block as defined below.
  final HadoopClusterRolesWorkerNodeAutoscaleCapacity? capacity;
  /// A `recurrence` block as defined below.
  ///
  /// > **Note:** Either a `capacity` or `recurrence` block must be specified - but not both.
  final HadoopClusterRolesWorkerNodeAutoscaleRecurrence? recurrence;

  /// Creates a new [HadoopClusterRolesWorkerNodeAutoscale].
  /// [capacity] A `capacity` block as defined below.
  /// [recurrence] A `recurrence` block as defined below.
  HadoopClusterRolesWorkerNodeAutoscale({
    this.capacity,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory HadoopClusterRolesWorkerNodeAutoscale.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesWorkerNodeAutoscale(
      capacity: map['capacity'] == null ? null : HadoopClusterRolesWorkerNodeAutoscaleCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      recurrence: map['recurrence'] == null ? null : HadoopClusterRolesWorkerNodeAutoscaleRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

