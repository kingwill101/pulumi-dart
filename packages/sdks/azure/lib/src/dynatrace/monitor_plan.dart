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
      billingCycle: (() { final guardedValue = map['billingCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveDate: (() { final guardedValue = map['effectiveDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: pulumi.Input.fromValue(map['plan'] as String),
      usageType: (() { final guardedValue = map['usageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

