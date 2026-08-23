// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqlvirtualmachine_get_sql_virtual_machine_args_doc}
/// Arguments for getSqlVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_sqlvirtualmachine_get_sql_virtual_machine_args_doc}
class GetSqlVirtualMachineArgs {
  /// The child resources to include in the response.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL virtual machine.
  final pulumi.Input<String> sqlVirtualMachineName;

  /// Creates a new [GetSqlVirtualMachineArgs].
  /// [expand] The child resources to include in the response.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlVirtualMachineName] Name of the SQL virtual machine.
  const GetSqlVirtualMachineArgs({
    this.expand,
    required this.resourceGroupName,
    required this.sqlVirtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'sqlVirtualMachineName': sqlVirtualMachineName,
    };
  }

  factory GetSqlVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlVirtualMachineArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlVirtualMachineName: pulumi.Input.fromValue(map['sqlVirtualMachineName'] as String),
    );
  }
}
