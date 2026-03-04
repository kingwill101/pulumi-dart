// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_window_recurring_window.dart';

class ClusterMaintenancePolicyWindow {
  /// Represents an arbitrary window of time that recurs.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicyWindowRecurringWindow>
  recurringWindow;

  /// Creates a new [ClusterMaintenancePolicyWindow].
  /// [recurringWindow] Represents an arbitrary window of time that recurs.
  ClusterMaintenancePolicyWindow({required this.recurringWindow});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurringWindow':
          pulumi.Input.mapInputValue<
            ClusterMaintenancePolicyWindowRecurringWindow,
            Map<String, dynamic>
          >(recurringWindow, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenancePolicyWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyWindow(
      recurringWindow: pulumi.Input.fromValue(
        ClusterMaintenancePolicyWindowRecurringWindow.fromMap(
          (map['recurringWindow']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
