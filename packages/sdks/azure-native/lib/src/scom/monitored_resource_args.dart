// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scom_monitored_resource_args_doc}
/// The set of arguments for MonitoredResource.
/// {@endtemplate}
/// {@macro pulumi_scom_monitored_resource_args_doc}
class MonitoredResourceArgs {
  /// Name of the SCOM managed instance.
  final pulumi.Input<String> instanceName;
  /// The monitored resource name.
  final pulumi.Input<String>? monitoredResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MonitoredResourceArgs].
  /// [instanceName] Name of the SCOM managed instance.
  /// [monitoredResourceName] The monitored resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  MonitoredResourceArgs({
    required this.instanceName,
    this.monitoredResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'monitoredResourceName': ?monitoredResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MonitoredResourceArgs.fromMap(Map<String, dynamic> map) {
    return MonitoredResourceArgs(
      instanceName: (map['instanceName'] as String).input(),
      monitoredResourceName: map['monitoredResourceName'] == null ? null : (map['monitoredResourceName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

