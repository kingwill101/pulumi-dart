// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_database_long_term_retention_policy.dart';
import 'get_managed_database_point_in_time_restore.dart';

/// Result data returned by getManagedDatabase.
class GetManagedDatabaseResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `longTermRetentionPolicy` block as defined below.
  final List<GetManagedDatabaseLongTermRetentionPolicy> longTermRetentionPolicies;
  final String managedInstanceId;
  /// The name of the Managed Instance.
  final String managedInstanceName;
  final String name;
  /// A `pointInTimeRestore` block as defined below.
  final List<GetManagedDatabasePointInTimeRestore> pointInTimeRestores;
  /// The name of the Resource Group where the Azure SQL Azure Managed Instance exists.
  final String resourceGroupName;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  final int shortTermRetentionDays;

  /// Creates a new [GetManagedDatabaseResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [longTermRetentionPolicies] A `longTermRetentionPolicy` block as defined below.
  /// [managedInstanceId] Required.
  /// [managedInstanceName] The name of the Managed Instance.
  /// [name] Required.
  /// [pointInTimeRestores] A `pointInTimeRestore` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Azure SQL Azure Managed Instance exists.
  /// [shortTermRetentionDays] The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  const GetManagedDatabaseResult({
    required this.id,
    required this.longTermRetentionPolicies,
    required this.managedInstanceId,
    required this.managedInstanceName,
    required this.name,
    required this.pointInTimeRestores,
    required this.resourceGroupName,
    required this.shortTermRetentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'longTermRetentionPolicies': pulumi.Input.encodeList<GetManagedDatabaseLongTermRetentionPolicy, Map<String, dynamic>>(longTermRetentionPolicies, (value) => value.toMap()),
      'managedInstanceId': managedInstanceId,
      'managedInstanceName': managedInstanceName,
      'name': name,
      'pointInTimeRestores': pulumi.Input.encodeList<GetManagedDatabasePointInTimeRestore, Map<String, dynamic>>(pointInTimeRestores, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'shortTermRetentionDays': shortTermRetentionDays,
    };
  }

  factory GetManagedDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseResult(
      id: map['id'] as String,
      longTermRetentionPolicies: pulumi.Input.decodeList<GetManagedDatabaseLongTermRetentionPolicy>(map['longTermRetentionPolicies']!, (value) => GetManagedDatabaseLongTermRetentionPolicy.fromMap((value as Map).cast<String, dynamic>())),
      managedInstanceId: map['managedInstanceId'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      name: map['name'] as String,
      pointInTimeRestores: pulumi.Input.decodeList<GetManagedDatabasePointInTimeRestore>(map['pointInTimeRestores']!, (value) => GetManagedDatabasePointInTimeRestore.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      shortTermRetentionDays: map['shortTermRetentionDays'] as int,
    );
  }
}
