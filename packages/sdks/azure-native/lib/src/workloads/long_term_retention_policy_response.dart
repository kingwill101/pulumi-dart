// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_retention_schedule_response.dart';
import 'monthly_retention_schedule_response.dart';
import 'weekly_retention_schedule_response.dart';
import 'yearly_retention_schedule_response.dart';

/// Long term retention policy.
class LongTermRetentionPolicyResponse {
  /// Daily retention schedule of the protection policy.
  final pulumi.Input<DailyRetentionScheduleResponse?>? dailySchedule;
  /// Monthly retention schedule of the protection policy.
  final pulumi.Input<MonthlyRetentionScheduleResponse?>? monthlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermRetentionPolicy'.
  final pulumi.Input<String> retentionPolicyType;
  /// Weekly retention schedule of the protection policy.
  final pulumi.Input<WeeklyRetentionScheduleResponse?>? weeklySchedule;
  /// Yearly retention schedule of the protection policy.
  final pulumi.Input<YearlyRetentionScheduleResponse?>? yearlySchedule;

  /// Creates a new [LongTermRetentionPolicyResponse].
  /// [dailySchedule] Daily retention schedule of the protection policy.
  /// [monthlySchedule] Monthly retention schedule of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [weeklySchedule] Weekly retention schedule of the protection policy.
  /// [yearlySchedule] Yearly retention schedule of the protection policy.
  const LongTermRetentionPolicyResponse({
    this.dailySchedule,
    this.monthlySchedule,
    required this.retentionPolicyType,
    this.weeklySchedule,
    this.yearlySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<DailyRetentionScheduleResponse, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<MonthlyRetentionScheduleResponse, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'retentionPolicyType': retentionPolicyType,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<WeeklyRetentionScheduleResponse, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
      'yearlySchedule': ?pulumi.Input.mapOptionalInputValue<YearlyRetentionScheduleResponse, Map<String, dynamic>>(yearlySchedule, (value) => value.toMap()),
    };
  }

  factory LongTermRetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return LongTermRetentionPolicyResponse(
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DailyRetentionScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonthlyRetentionScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionPolicyType: pulumi.Input.fromValue(map['retentionPolicyType'] as String),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklyRetentionScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yearlySchedule: (() { final guardedValue = map['yearlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(YearlyRetentionScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
