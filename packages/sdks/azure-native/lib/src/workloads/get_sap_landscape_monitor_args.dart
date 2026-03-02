// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_landscape_monitor_args_doc}
/// Arguments for getSapLandscapeMonitor.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_landscape_monitor_args_doc}
class GetSapLandscapeMonitorArgs {
  /// Name of the SAP monitor resource.
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSapLandscapeMonitorArgs].
  /// [monitorName] Name of the SAP monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSapLandscapeMonitorArgs({
    required this.monitorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSapLandscapeMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetSapLandscapeMonitorArgs(
      monitorName: (map['monitorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

