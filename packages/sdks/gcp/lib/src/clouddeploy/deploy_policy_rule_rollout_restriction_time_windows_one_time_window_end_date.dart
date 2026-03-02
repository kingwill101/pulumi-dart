// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month.
  final pulumi.Input<int>? day;
  /// Month of a year. Must be from 1 to 12.
  final pulumi.Input<int>? month;
  /// Year of the date. Must be from 1 to 9999.
  final pulumi.Input<int>? year;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate].
  /// [day] Day of a month. Must be from 1 to 31 and valid for the year and month.
  /// [month] Month of a year. Must be from 1 to 12.
  /// [year] Year of the date. Must be from 1 to 9999.
  DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate({
    this.day,
    this.month,
    this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'month': ?month,
      'year': ?year,
    };
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate(
      day: map['day'] == null ? null : (map['day']! as int).input(),
      month: map['month'] == null ? null : (map['month']! as int).input(),
      year: map['year'] == null ? null : (map['year']! as int).input(),
    );
  }
}

