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
  final pulumi.Input<String?>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL virtual machine group.
  final pulumi.Input<String> sqlVirtualMachineGroupName;

  /// Creates a new [GetAvailabilityGroupListenerArgs].
  /// [availabilityGroupListenerName] Name of the availability group listener.
  /// [expand] The child resources to include in the response.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlVirtualMachineGroupName] Name of the SQL virtual machine group.
  const GetAvailabilityGroupListenerArgs({
    required this.availabilityGroupListenerName,
    this.expand,
    required this.resourceGroupName,
    required this.sqlVirtualMachineGroupName,
  });

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
      availabilityGroupListenerName: pulumi.Input.fromValue(map['availabilityGroupListenerName'] as String),
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlVirtualMachineGroupName: pulumi.Input.fromValue(map['sqlVirtualMachineGroupName'] as String),
    );
  }
}
