// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_update_policy_maintenance_window.dart';

class GetClusterMaintenanceUpdatePolicy {
  /// Preferred windows to perform maintenance. Currently limited to 1.
  final pulumi.Input<List<GetClusterMaintenanceUpdatePolicyMaintenanceWindow>> maintenanceWindows;

  /// Creates a new [GetClusterMaintenanceUpdatePolicy].
  /// [maintenanceWindows] Preferred windows to perform maintenance. Currently limited to 1.
  GetClusterMaintenanceUpdatePolicy({
    required this.maintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceWindows': pulumi.Input.mapInputValue<List<GetClusterMaintenanceUpdatePolicyMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<GetClusterMaintenanceUpdatePolicyMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterMaintenanceUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenanceUpdatePolicy(
      maintenanceWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterMaintenanceUpdatePolicyMaintenanceWindow>(map['maintenanceWindows']!, (value) => GetClusterMaintenanceUpdatePolicyMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

