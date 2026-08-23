// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_database_args_doc}
/// Arguments for getManagedDatabase.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_database_args_doc}
class GetManagedDatabaseArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedDatabaseArgs].
  /// [databaseName] The name of the database.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  const GetManagedDatabaseArgs({
    required this.databaseName,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      managedInstanceName: pulumi.Input.fromValue(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
