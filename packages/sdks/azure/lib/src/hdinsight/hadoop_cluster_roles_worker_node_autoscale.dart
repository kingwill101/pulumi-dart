// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_roles_worker_node_autoscale_capacity.dart';
import 'hadoop_cluster_roles_worker_node_autoscale_recurrence.dart';

class HadoopClusterRolesWorkerNodeAutoscale {
  /// A `capacity` block as defined below.
  final pulumi.Input<HadoopClusterRolesWorkerNodeAutoscaleCapacity>? capacity;
  /// A `recurrence` block as defined below.
  ///
  /// &gt; **Note:** Either a `capacity` or `recurrence` block must be specified - but not both.
  final pulumi.Input<HadoopClusterRolesWorkerNodeAutoscaleRecurrence>? recurrence;

  /// Creates a new [HadoopClusterRolesWorkerNodeAutoscale].
  /// [capacity] A `capacity` block as defined below.
  /// [recurrence] A `recurrence` block as defined below.
  HadoopClusterRolesWorkerNodeAutoscale({
    this.capacity,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?pulumi.Input.mapOptionalInputValue<HadoopClusterRolesWorkerNodeAutoscaleCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'recurrence': ?pulumi.Input.mapOptionalInputValue<HadoopClusterRolesWorkerNodeAutoscaleRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory HadoopClusterRolesWorkerNodeAutoscale.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesWorkerNodeAutoscale(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterRolesWorkerNodeAutoscaleCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterRolesWorkerNodeAutoscaleRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

