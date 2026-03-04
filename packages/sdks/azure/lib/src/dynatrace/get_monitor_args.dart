// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynatrace_get_monitor_get_monitor_args_doc}
/// Arguments for getMonitor.
/// {@endtemplate}
/// {@macro pulumi_dynatrace_get_monitor_get_monitor_args_doc}
class GetMonitorArgs {
  /// Name of the Dynatrace monitor.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the Dynatrace monitor should exist.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMonitorArgs].
  /// [name] Name of the Dynatrace monitor.
  /// [resourceGroupName] The name of the Resource Group where the Dynatrace monitor should exist.
  GetMonitorArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
