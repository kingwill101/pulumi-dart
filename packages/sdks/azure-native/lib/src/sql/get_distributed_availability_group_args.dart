// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_distributed_availability_group_args_doc}
/// Arguments for getDistributedAvailabilityGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_get_distributed_availability_group_args_doc}
class GetDistributedAvailabilityGroupArgs {
  /// The distributed availability group name.
  final pulumi.Input<String> distributedAvailabilityGroupName;

  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDistributedAvailabilityGroupArgs].
  /// [distributedAvailabilityGroupName] The distributed availability group name.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetDistributedAvailabilityGroupArgs({
    required this.distributedAvailabilityGroupName,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributedAvailabilityGroupName': distributedAvailabilityGroupName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDistributedAvailabilityGroupArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributedAvailabilityGroupArgs(
      distributedAvailabilityGroupName: pulumi.Input.fromValue(
        map['distributedAvailabilityGroupName'] as String,
      ),
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
