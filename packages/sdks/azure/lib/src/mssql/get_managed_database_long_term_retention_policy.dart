// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDatabaseLongTermRetentionPolicy {
  final pulumi.Input<bool> immutableBackupsEnabled;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String> monthlyRetention;
  /// The week of year to take the yearly backup.
  final pulumi.Input<int> weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String> weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format.
  final pulumi.Input<String> yearlyRetention;

  /// Creates a new [GetManagedDatabaseLongTermRetentionPolicy].
  /// [immutableBackupsEnabled] Required.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format.
  /// [weekOfYear] The week of year to take the yearly backup.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format.
  const GetManagedDatabaseLongTermRetentionPolicy({
    required this.immutableBackupsEnabled,
    required this.monthlyRetention,
    required this.weekOfYear,
    required this.weeklyRetention,
    required this.yearlyRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutableBackupsEnabled': immutableBackupsEnabled,
      'monthlyRetention': monthlyRetention,
      'weekOfYear': weekOfYear,
      'weeklyRetention': weeklyRetention,
      'yearlyRetention': yearlyRetention,
    };
  }

  factory GetManagedDatabaseLongTermRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseLongTermRetentionPolicy(
      immutableBackupsEnabled: pulumi.Input.fromValue(map['immutableBackupsEnabled'] as bool),
      monthlyRetention: pulumi.Input.fromValue(map['monthlyRetention'] as String),
      weekOfYear: pulumi.Input.fromValue(map['weekOfYear'] as int),
      weeklyRetention: pulumi.Input.fromValue(map['weeklyRetention'] as String),
      yearlyRetention: pulumi.Input.fromValue(map['yearlyRetention'] as String),
    );
  }
}
