// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDatabaseLongTermRetentionPolicy {
  final pulumi.Input<bool>? immutableBackupsEnabled;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 and 120 months. e.g. `P1Y`, `P1M`, `P4W` or `P30D`. Defaults to `PT0S`.
  final pulumi.Input<String>? monthlyRetention;
  /// The week of year to take the yearly backup. Value has to be between `1` and `52`.
  final pulumi.Input<int>? weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 and 520 weeks. e.g. `P1Y`, `P1M`, `P1W` or `P7D`. Defaults to `PT0S`.
  final pulumi.Input<String>? weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 and 10 years. e.g. `P1Y`, `P12M`, `P52W` or `P365D`. Defaults to `PT0S`.
  final pulumi.Input<String>? yearlyRetention;

  /// Creates a new [ManagedDatabaseLongTermRetentionPolicy].
  /// [immutableBackupsEnabled] Optional.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 and 120 months. e.g. `P1Y`, `P1M`, `P4W` or `P30D`. Defaults to `PT0S`.
  /// [weekOfYear] The week of year to take the yearly backup. Value has to be between `1` and `52`.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 and 520 weeks. e.g. `P1Y`, `P1M`, `P1W` or `P7D`. Defaults to `PT0S`.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 and 10 years. e.g. `P1Y`, `P12M`, `P52W` or `P365D`. Defaults to `PT0S`.
  const ManagedDatabaseLongTermRetentionPolicy({
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
      immutableBackupsEnabled: (() { final guardedValue = map['immutableBackupsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      monthlyRetention: (() { final guardedValue = map['monthlyRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weekOfYear: (() { final guardedValue = map['weekOfYear']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weeklyRetention: (() { final guardedValue = map['weeklyRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      yearlyRetention: (() { final guardedValue = map['yearlyRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
