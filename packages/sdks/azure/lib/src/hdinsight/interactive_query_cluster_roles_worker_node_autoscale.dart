// ignore_for_file: unused_element, unnecessary_cast

import 'interactive_query_cluster_roles_worker_node_autoscale_recurrence.dart';

class InteractiveQueryClusterRolesWorkerNodeAutoscale {
  /// A `recurrence` block as defined below.
  final InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence? recurrence;

  /// Creates a new [InteractiveQueryClusterRolesWorkerNodeAutoscale].
  /// [recurrence] A `recurrence` block as defined below.
  InteractiveQueryClusterRolesWorkerNodeAutoscale({
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory InteractiveQueryClusterRolesWorkerNodeAutoscale.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterRolesWorkerNodeAutoscale(
      recurrence: map['recurrence'] == null ? null : InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

