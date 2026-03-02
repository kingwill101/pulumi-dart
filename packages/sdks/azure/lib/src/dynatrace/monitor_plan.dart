// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorPlan {
  /// Different billing cycles. Possible values are `MONTHLY`, `WEEKLY` and `YEARLY`.
  final pulumi.Input<String>? billingCycle;
  /// Date when plan was applied.
  final pulumi.Input<String>? effectiveDate;
  /// Plan id as published by Dynatrace.
  final pulumi.Input<String> plan;
  /// Different usage type. Possible values are `PAYG` and `COMMITTED`.
  final pulumi.Input<String>? usageType;

  /// Creates a new [MonitorPlan].
  /// [billingCycle] Different billing cycles. Possible values are `MONTHLY`, `WEEKLY` and `YEARLY`.
  /// [effectiveDate] Date when plan was applied.
  /// [plan] Plan id as published by Dynatrace.
  /// [usageType] Different usage type. Possible values are `PAYG` and `COMMITTED`.
  MonitorPlan({
    this.billingCycle,
    this.effectiveDate,
    required this.plan,
    this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': ?billingCycle,
      'effectiveDate': ?effectiveDate,
      'plan': plan,
      'usageType': ?usageType,
    };
  }

  factory MonitorPlan.fromMap(Map<String, dynamic> map) {
    return MonitorPlan(
      billingCycle: map['billingCycle'] == null ? null : (map['billingCycle']! as String).input(),
      effectiveDate: map['effectiveDate'] == null ? null : (map['effectiveDate']! as String).input(),
      plan: (map['plan'] as String).input(),
      usageType: map['usageType'] == null ? null : (map['usageType']! as String).input(),
    );
  }
}

