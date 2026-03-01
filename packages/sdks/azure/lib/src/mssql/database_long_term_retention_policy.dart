// ignore_for_file: unused_element, unnecessary_cast


class DatabaseLongTermRetentionPolicy {
  /// Specifies if the backups are immutable. Defaults to `false`.
  final bool? immutableBackupsEnabled;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. `P1Y`, `P1M`, `P4W` or `P30D`. Defaults to `PT0S`.
  final String? monthlyRetention;
  /// The week of year to take the yearly backup. Value has to be between `1` and `52`.
  final int? weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. `P1Y`, `P1M`, `P1W` or `P7D`. Defaults to `PT0S`.
  final String? weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. `P1Y`, `P12M`, `P52W` or `P365D`. Defaults to `PT0S`.
  final String? yearlyRetention;

  /// Creates a new [DatabaseLongTermRetentionPolicy].
  /// [immutableBackupsEnabled] Specifies if the backups are immutable. Defaults to `false`.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. `P1Y`, `P1M`, `P4W` or `P30D`. Defaults to `PT0S`.
  /// [weekOfYear] The week of year to take the yearly backup. Value has to be between `1` and `52`.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. `P1Y`, `P1M`, `P1W` or `P7D`. Defaults to `PT0S`.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. `P1Y`, `P12M`, `P52W` or `P365D`. Defaults to `PT0S`.
  DatabaseLongTermRetentionPolicy({
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

  factory DatabaseLongTermRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DatabaseLongTermRetentionPolicy(
      immutableBackupsEnabled: map['immutableBackupsEnabled'] == null ? null : map['immutableBackupsEnabled'] as bool,
      monthlyRetention: map['monthlyRetention'] == null ? null : map['monthlyRetention'] as String,
      weekOfYear: map['weekOfYear'] == null ? null : map['weekOfYear'] as int,
      weeklyRetention: map['weeklyRetention'] == null ? null : map['weeklyRetention'] as String,
      yearlyRetention: map['yearlyRetention'] == null ? null : map['yearlyRetention'] as String,
    );
  }
}

