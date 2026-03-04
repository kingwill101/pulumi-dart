// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_get_managed_instance_get_managed_instance_args_doc}
/// Arguments for getManagedInstance.
/// {@endtemplate}
/// {@macro pulumi_mssql_get_managed_instance_get_managed_instance_args_doc}
class GetManagedInstanceArgs {
  /// The name of the SQL Managed Instance.
  final pulumi.Input<String> name;

  /// The name of the resource group where the SQL Managed Instance exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstanceArgs].
  /// [name] The name of the SQL Managed Instance.
  /// [resourceGroupName] The name of the resource group where the SQL Managed Instance exists.
  GetManagedInstanceArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
