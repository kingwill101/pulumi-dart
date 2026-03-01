// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_central_server_instance_args_doc}
/// Arguments for getSapCentralServerInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_central_server_instance_args_doc}
class GetSapCentralServerInstanceArgs {
  /// Central Services Instance resource name string modeled as parameter for auto generation to work correctly.
  final pulumi.Input<String> centralInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;

  /// Creates a new [GetSapCentralServerInstanceArgs].
  /// [centralInstanceName] Central Services Instance resource name string modeled as parameter for auto generation to work correctly.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  GetSapCentralServerInstanceArgs({
    required pulumi.Output<String> centralInstanceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapVirtualInstanceName,
  }) :
      centralInstanceName = pulumi.Input.asInput<String>(centralInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapVirtualInstanceName = pulumi.Input.asInput<String>(sapVirtualInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralInstanceName': centralInstanceName,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapCentralServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapCentralServerInstanceArgs(
      centralInstanceName: pulumi.Output.create<String>(map['centralInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Output.create<String>(map['sapVirtualInstanceName'] as String),
    );
  }
}

