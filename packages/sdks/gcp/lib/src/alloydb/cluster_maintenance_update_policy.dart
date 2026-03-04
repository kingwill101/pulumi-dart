// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_update_policy_maintenance_window.dart';

class ClusterMaintenanceUpdatePolicy {
  /// Preferred windows to perform maintenance. Currently limited to 1.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterMaintenanceUpdatePolicyMaintenanceWindow>>?
  maintenanceWindows;

  /// Creates a new [ClusterMaintenanceUpdatePolicy].
  /// [maintenanceWindows] Preferred windows to perform maintenance. Currently limited to 1.
  ClusterMaintenanceUpdatePolicy({this.maintenanceWindows});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceWindows':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterMaintenanceUpdatePolicyMaintenanceWindow>,
            List<Map<String, dynamic>>
          >(
            maintenanceWindows,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterMaintenanceUpdatePolicyMaintenanceWindow,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterMaintenanceUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenanceUpdatePolicy(
      maintenanceWindows: (() {
        final guardedValue = map['maintenanceWindows'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ClusterMaintenanceUpdatePolicyMaintenanceWindow
          >(
            guardedValue,
            (value) => ClusterMaintenanceUpdatePolicyMaintenanceWindow.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
