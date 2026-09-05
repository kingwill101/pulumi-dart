// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_database_long_term_retention_policy.dart';
import 'get_managed_database_point_in_time_restore.dart';

/// Result data returned by getManagedDatabase.
class GetManagedDatabaseResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `longTermRetentionPolicy` block as defined below.
  final List<GetManagedDatabaseLongTermRetentionPolicy>? longTermRetentionPolicies;
  final String? managedInstanceId;
  /// The name of the Managed Instance.
  final String? managedInstanceName;
  final String? name;
  /// A `pointInTimeRestore` block as defined below.
  final List<GetManagedDatabasePointInTimeRestore>? pointInTimeRestores;
  /// The name of the Resource Group where the Azure SQL Azure Managed Instance exists.
  final String? resourceGroupName;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  final int? shortTermRetentionDays;

  /// Creates a new [GetManagedDatabaseResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [longTermRetentionPolicies] A `longTermRetentionPolicy` block as defined below.
  /// [managedInstanceId] Optional.
  /// [managedInstanceName] The name of the Managed Instance.
  /// [name] Optional.
  /// [pointInTimeRestores] A `pointInTimeRestore` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Azure SQL Azure Managed Instance exists.
  /// [shortTermRetentionDays] The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  const GetManagedDatabaseResult({
    this.id,
    this.longTermRetentionPolicies,
    this.managedInstanceId,
    this.managedInstanceName,
    this.name,
    this.pointInTimeRestores,
    this.resourceGroupName,
    this.shortTermRetentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'longTermRetentionPolicies': ?(() { final guardedValue = longTermRetentionPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDatabaseLongTermRetentionPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedInstanceId': ?managedInstanceId,
      'managedInstanceName': ?managedInstanceName,
      'name': ?name,
      'pointInTimeRestores': ?(() { final guardedValue = pointInTimeRestores; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDatabasePointInTimeRestore, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'shortTermRetentionDays': ?shortTermRetentionDays,
    };
  }

  factory GetManagedDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      longTermRetentionPolicies: (() { final guardedValue = map['longTermRetentionPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDatabaseLongTermRetentionPolicy>(guardedValue, (value) => GetManagedDatabaseLongTermRetentionPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedInstanceId: (() { final guardedValue = map['managedInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedInstanceName: (() { final guardedValue = map['managedInstanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pointInTimeRestores: (() { final guardedValue = map['pointInTimeRestores']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDatabasePointInTimeRestore>(guardedValue, (value) => GetManagedDatabasePointInTimeRestore.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shortTermRetentionDays: (() { final guardedValue = map['shortTermRetentionDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
