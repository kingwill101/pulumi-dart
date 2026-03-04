// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_database_long_term_retention_policy.dart';
import 'managed_database_point_in_time_restore.dart';

/// {@template pulumi_mssql_managed_database_managed_database_args_doc}
/// The set of arguments for ManagedDatabase.
/// {@endtemplate}
/// {@macro pulumi_mssql_managed_database_managed_database_args_doc}
class ManagedDatabaseArgs {
  /// A `long_term_retention_policy` block as defined below.
  final pulumi.Input<ManagedDatabaseLongTermRetentionPolicy>?
  longTermRetentionPolicy;

  /// The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedInstanceId;

  /// The name of the Managed Database to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A `point_in_time_restore` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ManagedDatabasePointInTimeRestore>? pointInTimeRestore;

  /// The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  final pulumi.Input<int>? shortTermRetentionDays;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedDatabaseArgs].
  /// [longTermRetentionPolicy] A `long_term_retention_policy` block as defined below.
  /// [managedInstanceId] The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created.
  /// [name] The name of the Managed Database to create. Changing this forces a new resource to be created.
  /// [pointInTimeRestore] A `point_in_time_restore` block as defined below. Changing this forces a new resource to be created.
  /// [shortTermRetentionDays] The backup retention period in days. This is how many days Point-in-Time Restore will be supported.
  /// [tags] A mapping of tags to assign to the resource.
  ManagedDatabaseArgs({
    this.longTermRetentionPolicy,
    required this.managedInstanceId,
    this.name,
    this.pointInTimeRestore,
    this.shortTermRetentionDays,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'longTermRetentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedDatabaseLongTermRetentionPolicy,
            Map<String, dynamic>
          >(longTermRetentionPolicy, (value) => value.toMap()),
      'managedInstanceId': managedInstanceId,
      'name': ?name,
      'pointInTimeRestore':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedDatabasePointInTimeRestore,
            Map<String, dynamic>
          >(pointInTimeRestore, (value) => value.toMap()),
      'shortTermRetentionDays': ?shortTermRetentionDays,
      'tags': ?tags,
    };
  }

  factory ManagedDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return ManagedDatabaseArgs(
      longTermRetentionPolicy: (() {
        final guardedValue = map['longTermRetentionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedDatabaseLongTermRetentionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managedInstanceId: pulumi.Input.fromValue(
        map['managedInstanceId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pointInTimeRestore: (() {
        final guardedValue = map['pointInTimeRestore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedDatabasePointInTimeRestore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      shortTermRetentionDays: (() {
        final guardedValue = map['shortTermRetentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
