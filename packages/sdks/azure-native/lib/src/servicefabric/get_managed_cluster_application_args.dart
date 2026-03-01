// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_application_args_doc}
/// Arguments for getManagedClusterApplication.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_application_args_doc}
class GetManagedClusterApplicationArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedClusterApplicationArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  GetManagedClusterApplicationArgs({
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedClusterApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationArgs(
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

