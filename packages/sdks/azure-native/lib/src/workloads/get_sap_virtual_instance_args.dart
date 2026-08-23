// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_virtual_instance_args_doc}
/// Arguments for getSapVirtualInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_virtual_instance_args_doc}
class GetSapVirtualInstanceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;

  /// Creates a new [GetSapVirtualInstanceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  const GetSapVirtualInstanceArgs({
    required this.resourceGroupName,
    required this.sapVirtualInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapVirtualInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Input.fromValue(map['sapVirtualInstanceName'] as String),
    );
  }
}
