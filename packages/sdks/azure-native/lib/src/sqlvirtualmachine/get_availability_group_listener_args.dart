// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqlvirtualmachine_get_availability_group_listener_args_doc}
/// Arguments for getAvailabilityGroupListener.
/// {@endtemplate}
/// {@macro pulumi_sqlvirtualmachine_get_availability_group_listener_args_doc}
class GetAvailabilityGroupListenerArgs {
  /// Name of the availability group listener.
  final pulumi.Input<String> availabilityGroupListenerName;
  /// The child resources to include in the response.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL virtual machine group.
  final pulumi.Input<String> sqlVirtualMachineGroupName;

  /// Creates a new [GetAvailabilityGroupListenerArgs].
  /// [availabilityGroupListenerName] Name of the availability group listener.
  /// [expand] The child resources to include in the response.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlVirtualMachineGroupName] Name of the SQL virtual machine group.
  GetAvailabilityGroupListenerArgs({
    required pulumi.Output<String> availabilityGroupListenerName,
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlVirtualMachineGroupName,
  }) :
      availabilityGroupListenerName = pulumi.Input.asInput<String>(availabilityGroupListenerName),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlVirtualMachineGroupName = pulumi.Input.asInput<String>(sqlVirtualMachineGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupListenerName': availabilityGroupListenerName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'sqlVirtualMachineGroupName': sqlVirtualMachineGroupName,
    };
  }

  factory GetAvailabilityGroupListenerArgs.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityGroupListenerArgs(
      availabilityGroupListenerName: pulumi.Output.create<String>(map['availabilityGroupListenerName'] as String),
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlVirtualMachineGroupName: pulumi.Output.create<String>(map['sqlVirtualMachineGroupName'] as String),
    );
  }
}

