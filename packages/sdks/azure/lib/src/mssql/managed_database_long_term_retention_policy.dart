// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDatabaseLongTermRetentionPolicy {
  /// Specifies if the backups are immutable. Defaults to `false`.
  final pulumi.Input<bool>? immutableBackupsEnabled;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. `P1Y`, `P1M`, `P4W` or `P30D`. Defaults to `PT0S`.
  final pulumi.Input<String>? monthlyRetention;
  /// The week of year to take the yearly backup. Value has to be between `1` and `52`.
  final pulumi.Input<int>? weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. `P1Y`, `P1M`, `P1W` or `P7D`. Defaults to `PT0S`.
  final pulumi.Input<String>? weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. `P1Y`, `P12M`, `P52W` or `P365D`. Defaults to `PT0S`.
  final pulumi.Input<String>? yearlyRetention;

  /// Creates a new [ManagedDatabaseLongTermRetentionPolicy].
  /// [immutableBackupsEnabled] Specifies if the backups are immutable. Defaults to `false`.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. `P1Y`, `P1M`, `P4W` or `P30D`. Defaults to `PT0S`.
  /// [weekOfYear] The week of year to take the yearly backup. Value has to be between `1` and `52`.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. `P1Y`, `P1M`, `P1W` or `P7D`. Defaults to `PT0S`.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. `P1Y`, `P12M`, `P52W` or `P365D`. Defaults to `PT0S`.
  ManagedDatabaseLongTermRetentionPolicy({
    this.immutableBackupsEnabled,
    this.monthlyRetention,
    this.weekOfYear,
    this.weeklyRetention,
    this.yearlyRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutableBackupsEnabled': ?immutableBackupsEnabled,
      'monthlyRetention': ?monthlyRetention,
      'weekOfYear': ?weekOfYear,
      'weeklyRetention': ?weeklyRetention,
      'yearlyRetention': ?yearlyRetention,
    };
  }

  factory ManagedDatabaseLongTermRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return ManagedDatabaseLongTermRetentionPolicy(
      immutableBackupsEnabled: map['immutableBackupsEnabled'] == null ? null : (map['immutableBackupsEnabled']! as bool).input(),
      monthlyRetention: map['monthlyRetention'] == null ? null : (map['monthlyRetention']! as String).input(),
      weekOfYear: map['weekOfYear'] == null ? null : (map['weekOfYear']! as int).input(),
      weeklyRetention: map['weeklyRetention'] == null ? null : (map['weeklyRetention']! as String).input(),
      yearlyRetention: map['yearlyRetention'] == null ? null : (map['yearlyRetention']! as String).input(),
    );
  }
}

