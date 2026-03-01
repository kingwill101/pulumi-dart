// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqlvirtualmachine_get_sql_virtual_machine_group_args_doc}
/// Arguments for getSqlVirtualMachineGroup.
/// {@endtemplate}
/// {@macro pulumi_sqlvirtualmachine_get_sql_virtual_machine_group_args_doc}
class GetSqlVirtualMachineGroupArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL virtual machine group.
  final pulumi.Input<String> sqlVirtualMachineGroupName;

  /// Creates a new [GetSqlVirtualMachineGroupArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlVirtualMachineGroupName] Name of the SQL virtual machine group.
  GetSqlVirtualMachineGroupArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlVirtualMachineGroupName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlVirtualMachineGroupName = pulumi.Input.asInput<String>(sqlVirtualMachineGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlVirtualMachineGroupName': sqlVirtualMachineGroupName,
    };
  }

  factory GetSqlVirtualMachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlVirtualMachineGroupArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlVirtualMachineGroupName: pulumi.Output.create<String>(map['sqlVirtualMachineGroupName'] as String),
    );
  }
}

