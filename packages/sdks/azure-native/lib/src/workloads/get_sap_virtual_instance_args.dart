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
  GetSapVirtualInstanceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapVirtualInstanceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapVirtualInstanceName = pulumi.Input.asInput<String>(sapVirtualInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapVirtualInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Output.create<String>(map['sapVirtualInstanceName'] as String),
    );
  }
}

