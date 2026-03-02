// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_retention_schedule_response.dart';
import 'monthly_retention_schedule_response.dart';
import 'weekly_retention_schedule_response.dart';
import 'yearly_retention_schedule_response.dart';

/// Long term retention policy.
class LongTermRetentionPolicyResponse {
  /// Daily retention schedule of the protection policy.
  final pulumi.Input<DailyRetentionScheduleResponse>? dailySchedule;
  /// Monthly retention schedule of the protection policy.
  final pulumi.Input<MonthlyRetentionScheduleResponse>? monthlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermRetentionPolicy'.
  final pulumi.Input<String> retentionPolicyType;
  /// Weekly retention schedule of the protection policy.
  final pulumi.Input<WeeklyRetentionScheduleResponse>? weeklySchedule;
  /// Yearly retention schedule of the protection policy.
  final pulumi.Input<YearlyRetentionScheduleResponse>? yearlySchedule;

  /// Creates a new [LongTermRetentionPolicyResponse].
  /// [dailySchedule] Daily retention schedule of the protection policy.
  /// [monthlySchedule] Monthly retention schedule of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [weeklySchedule] Weekly retention schedule of the protection policy.
  /// [yearlySchedule] Yearly retention schedule of the protection policy.
  LongTermRetentionPolicyResponse({
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
      dailySchedule: map['dailySchedule'] == null ? null : (DailyRetentionScheduleResponse.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>())).input(),
      monthlySchedule: map['monthlySchedule'] == null ? null : (MonthlyRetentionScheduleResponse.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>())).input(),
      retentionPolicyType: (map['retentionPolicyType'] as String).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (WeeklyRetentionScheduleResponse.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>())).input(),
      yearlySchedule: map['yearlySchedule'] == null ? null : (YearlyRetentionScheduleResponse.fromMap((map['yearlySchedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

