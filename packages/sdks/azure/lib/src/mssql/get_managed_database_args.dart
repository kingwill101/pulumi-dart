// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_get_managed_database_get_managed_database_args_doc}
/// Arguments for getManagedDatabase.
/// {@endtemplate}
/// {@macro pulumi_mssql_get_managed_database_get_managed_database_args_doc}
class GetManagedDatabaseArgs {
  /// The SQL Managed Instance ID.
  final pulumi.Input<String> managedInstanceId;
  /// The name of this Azure SQL Azure Managed Database.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedDatabaseArgs].
  /// [managedInstanceId] The SQL Managed Instance ID.
  /// [name] The name of this Azure SQL Azure Managed Database.
  const GetManagedDatabaseArgs({
    required this.managedInstanceId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedInstanceId': managedInstanceId,
      'name': name,
    };
  }

  factory GetManagedDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseArgs(
      managedInstanceId: pulumi.Input.fromValue(map['managedInstanceId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
