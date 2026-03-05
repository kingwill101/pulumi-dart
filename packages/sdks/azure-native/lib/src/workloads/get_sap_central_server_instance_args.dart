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
    required this.centralInstanceName,
    required this.resourceGroupName,
    required this.sapVirtualInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralInstanceName': centralInstanceName,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapCentralServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapCentralServerInstanceArgs(
      centralInstanceName: pulumi.Input.fromValue(map['centralInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Input.fromValue(map['sapVirtualInstanceName'] as String),
    );
  }
}

