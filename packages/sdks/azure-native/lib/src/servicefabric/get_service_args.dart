// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_service_args_doc}
class GetServiceArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service resource in the format of {applicationName}~{serviceName}.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServiceArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the service resource in the format of {applicationName}~{serviceName}.
  GetServiceArgs({
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

