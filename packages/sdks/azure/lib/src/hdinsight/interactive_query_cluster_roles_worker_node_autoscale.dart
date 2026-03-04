// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_roles_worker_node_autoscale_recurrence.dart';

class InteractiveQueryClusterRolesWorkerNodeAutoscale {
  /// A `recurrence` block as defined below.
  final pulumi.Input<InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence>?
  recurrence;

  /// Creates a new [InteractiveQueryClusterRolesWorkerNodeAutoscale].
  /// [recurrence] A `recurrence` block as defined below.
  InteractiveQueryClusterRolesWorkerNodeAutoscale({this.recurrence});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence,
            Map<String, dynamic>
          >(recurrence, (value) => value.toMap()),
    };
  }

  factory InteractiveQueryClusterRolesWorkerNodeAutoscale.fromMap(
    Map<String, dynamic> map,
  ) {
    return InteractiveQueryClusterRolesWorkerNodeAutoscale(
      recurrence: (() {
        final guardedValue = map['recurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterRolesWorkerNodeAutoscaleRecurrence.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
