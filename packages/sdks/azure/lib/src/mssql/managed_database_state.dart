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
    pulumi.Output<ManagedDatabaseLongTermRetentionPolicy>? longTermRetentionPolicy,
    pulumi.Output<String>? managedInstanceId,
    pulumi.Output<String>? name,
    pulumi.Output<ManagedDatabasePointInTimeRestore>? pointInTimeRestore,
    pulumi.Output<int>? shortTermRetentionDays,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      longTermRetentionPolicy = pulumi.Input.asOptionalInput<ManagedDatabaseLongTermRetentionPolicy>(longTermRetentionPolicy),
      managedInstanceId = pulumi.Input.asOptionalInput<String>(managedInstanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      pointInTimeRestore = pulumi.Input.asOptionalInput<ManagedDatabasePointInTimeRestore>(pointInTimeRestore),
      shortTermRetentionDays = pulumi.Input.asOptionalInput<int>(shortTermRetentionDays),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      longTermRetentionPolicy: map['longTermRetentionPolicy'] == null ? null : pulumi.Output.create<ManagedDatabaseLongTermRetentionPolicy>(ManagedDatabaseLongTermRetentionPolicy.fromMap((map['longTermRetentionPolicy'] as Map).cast<String, dynamic>())),
      managedInstanceId: map['managedInstanceId'] == null ? null : pulumi.Output.create<String>(map['managedInstanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pointInTimeRestore: map['pointInTimeRestore'] == null ? null : pulumi.Output.create<ManagedDatabasePointInTimeRestore>(ManagedDatabasePointInTimeRestore.fromMap((map['pointInTimeRestore'] as Map).cast<String, dynamic>())),
      shortTermRetentionDays: map['shortTermRetentionDays'] == null ? null : pulumi.Output.create<int>(map['shortTermRetentionDays'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

