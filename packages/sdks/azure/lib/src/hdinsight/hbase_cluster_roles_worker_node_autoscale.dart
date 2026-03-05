// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hbase_cluster_roles_worker_node_autoscale_recurrence.dart';

class HBaseClusterRolesWorkerNodeAutoscale {
  /// A `recurrence` block as defined below.
  ///
  /// &gt; **Note:** Either a `capacity` or `recurrence` block must be specified - but not both.
  final pulumi.Input<HBaseClusterRolesWorkerNodeAutoscaleRecurrence>? recurrence;

  /// Creates a new [HBaseClusterRolesWorkerNodeAutoscale].
  /// [recurrence] A `recurrence` block as defined below.
  HBaseClusterRolesWorkerNodeAutoscale({
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': ?pulumi.Input.mapOptionalInputValue<HBaseClusterRolesWorkerNodeAutoscaleRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory HBaseClusterRolesWorkerNodeAutoscale.fromMap(Map<String, dynamic> map) {
    return HBaseClusterRolesWorkerNodeAutoscale(
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterRolesWorkerNodeAutoscaleRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

