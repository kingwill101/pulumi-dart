// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_application_server_instance_args_doc}
/// Arguments for getSapApplicationServerInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_application_server_instance_args_doc}
class GetSapApplicationServerInstanceArgs {
  /// The name of SAP Application Server instance resource.
  final pulumi.Input<String> applicationInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;

  /// Creates a new [GetSapApplicationServerInstanceArgs].
  /// [applicationInstanceName] The name of SAP Application Server instance resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  GetSapApplicationServerInstanceArgs({
    required this.applicationInstanceName,
    required this.resourceGroupName,
    required this.sapVirtualInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInstanceName': applicationInstanceName,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapApplicationServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapApplicationServerInstanceArgs(
      applicationInstanceName: (map['applicationInstanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sapVirtualInstanceName: (map['sapVirtualInstanceName'] as String).input(),
    );
  }
}

