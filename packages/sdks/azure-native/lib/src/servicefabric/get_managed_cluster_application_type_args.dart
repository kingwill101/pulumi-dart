// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_application_type_args_doc}
/// Arguments for getManagedClusterApplicationType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_application_type_args_doc}
class GetManagedClusterApplicationTypeArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedClusterApplicationTypeArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  GetManagedClusterApplicationTypeArgs({
    required pulumi.Output<String> applicationTypeName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      applicationTypeName = pulumi.Input.asInput<String>(applicationTypeName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': applicationTypeName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedClusterApplicationTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationTypeArgs(
      applicationTypeName: pulumi.Output.create<String>(map['applicationTypeName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

