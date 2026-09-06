// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_retention_schedule.dart';
import 'monthly_retention_schedule.dart';
import 'weekly_retention_schedule.dart';
import 'yearly_retention_schedule.dart';

/// Long term retention policy.
class LongTermRetentionPolicy {
  /// Daily retention schedule of the protection policy.
  final pulumi.Input<DailyRetentionSchedule?>? dailySchedule;
  /// Monthly retention schedule of the protection policy.
  final pulumi.Input<MonthlyRetentionSchedule?>? monthlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermRetentionPolicy'.
  final pulumi.Input<String> retentionPolicyType;
  /// Weekly retention schedule of the protection policy.
  final pulumi.Input<WeeklyRetentionSchedule?>? weeklySchedule;
  /// Yearly retention schedule of the protection policy.
  final pulumi.Input<YearlyRetentionSchedule?>? yearlySchedule;

  /// Creates a new [LongTermRetentionPolicy].
  /// [dailySchedule] Daily retention schedule of the protection policy.
  /// [monthlySchedule] Monthly retention schedule of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [weeklySchedule] Weekly retention schedule of the protection policy.
  /// [yearlySchedule] Yearly retention schedule of the protection policy.
  const LongTermRetentionPolicy({
    this.dailySchedule,
    this.monthlySchedule,
    required this.retentionPolicyType,
    this.weeklySchedule,
    this.yearlySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<DailyRetentionSchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<MonthlyRetentionSchedule, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'retentionPolicyType': retentionPolicyType,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<WeeklyRetentionSchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
      'yearlySchedule': ?pulumi.Input.mapOptionalInputValue<YearlyRetentionSchedule, Map<String, dynamic>>(yearlySchedule, (value) => value.toMap()),
    };
  }

  factory LongTermRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return LongTermRetentionPolicy(
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DailyRetentionSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonthlyRetentionSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionPolicyType: pulumi.Input.fromValue(map['retentionPolicyType'] as String),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklyRetentionSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yearlySchedule: (() { final guardedValue = map['yearlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(YearlyRetentionSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
