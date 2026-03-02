// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_database_long_term_retention_policy.dart';
import 'managed_database_point_in_time_restore.dart';

/// Input properties used for looking up and filtering ManagedDatabase resources.
class ManagedDatabaseState {
  /// A `long_term_retention_policy` block as defined below.
  final pulumi.Input<ManagedDatabaseLongTermRetentionPolicy>? longTermRetentionPolicy;
  /// The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedInstanceId;
  /// The name of the Managed Database to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `point_in_time_restore` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ManagedDatabasePointInTimeRestore>? pointInTimeRestore;
  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  final pulumi.Input<int>? shortTermRetentionDays;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedDatabaseState].
  /// [longTermRetentionPolicy] A `long_term_retention_policy` block as defined below.
  /// [managedInstanceId] The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created.
  /// [name] The name of the Managed Database to create. Changing this forces a new resource to be created.
  /// [pointInTimeRestore] A `point_in_time_restore` block as defined below. Changing this forces a new resource to be created.
  /// [shortTermRetentionDays] The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  /// [tags] A mapping of tags to assign to the resource.
  ManagedDatabaseState({
    this.longTermRetentionPolicy,
    this.managedInstanceId,
    this.name,
    this.pointInTimeRestore,
    this.shortTermRetentionDays,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'longTermRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<ManagedDatabaseLongTermRetentionPolicy, Map<String, dynamic>>(longTermRetentionPolicy, (value) => value.toMap()),
      'managedInstanceId': ?managedInstanceId,
      'name': ?name,
      'pointInTimeRestore': ?pulumi.Input.mapOptionalInputValue<ManagedDatabasePointInTimeRestore, Map<String, dynamic>>(pointInTimeRestore, (value) => value.toMap()),
      'shortTermRetentionDays': ?shortTermRetentionDays,
      'tags': ?tags,
    };
  }

  factory ManagedDatabaseState.fromMap(Map<String, dynamic> map) {
    return ManagedDatabaseState(
      longTermRetentionPolicy: map['longTermRetentionPolicy'] == null ? null : (ManagedDatabaseLongTermRetentionPolicy.fromMap((map['longTermRetentionPolicy']! as Map).cast<String, dynamic>())).input(),
      managedInstanceId: map['managedInstanceId'] == null ? null : (map['managedInstanceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pointInTimeRestore: map['pointInTimeRestore'] == null ? null : (ManagedDatabasePointInTimeRestore.fromMap((map['pointInTimeRestore']! as Map).cast<String, dynamic>())).input(),
      shortTermRetentionDays: map['shortTermRetentionDays'] == null ? null : (map['shortTermRetentionDays']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

