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
    required pulumi.Output<String> applicationInstanceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapVirtualInstanceName,
  }) :
      applicationInstanceName = pulumi.Input.asInput<String>(applicationInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapVirtualInstanceName = pulumi.Input.asInput<String>(sapVirtualInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInstanceName': applicationInstanceName,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
    };
  }

  factory GetSapApplicationServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapApplicationServerInstanceArgs(
      applicationInstanceName: pulumi.Output.create<String>(map['applicationInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Output.create<String>(map['sapVirtualInstanceName'] as String),
    );
  }
}

