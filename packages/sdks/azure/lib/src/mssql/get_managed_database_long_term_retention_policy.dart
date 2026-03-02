// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDatabaseLongTermRetentionPolicy {
  /// Specifies if the backups are immutable.
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
  /// [immutableBackupsEnabled] Specifies if the backups are immutable.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format.
  /// [weekOfYear] The week of year to take the yearly backup.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format.
  GetManagedDatabaseLongTermRetentionPolicy({
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
      immutableBackupsEnabled: (map['immutableBackupsEnabled'] as bool).input(),
      monthlyRetention: (map['monthlyRetention'] as String).input(),
      weekOfYear: (map['weekOfYear'] as int).input(),
      weeklyRetention: (map['weeklyRetention'] as String).input(),
      yearlyRetention: (map['yearlyRetention'] as String).input(),
    );
  }
}

