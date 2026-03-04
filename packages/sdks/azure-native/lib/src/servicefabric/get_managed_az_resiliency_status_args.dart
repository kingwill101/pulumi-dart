// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_az_resiliency_status_args_doc}
/// Arguments for getManagedAzResiliencyStatus.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_az_resiliency_status_args_doc}
class GetManagedAzResiliencyStatusArgs {
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedAzResiliencyStatusArgs].
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  GetManagedAzResiliencyStatusArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedAzResiliencyStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedAzResiliencyStatusArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
