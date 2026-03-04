// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMonitorPlan {
  /// Different billing cycles.
  final pulumi.Input<String> billingCycle;

  /// Date when plan was applied.
  final pulumi.Input<String> effectiveDate;

  /// Plan id as published by Dynatrace.
  final pulumi.Input<String> plan;

  /// Different usage type.
  final pulumi.Input<String> usageType;

  /// Creates a new [GetMonitorPlan].
  /// [billingCycle] Different billing cycles.
  /// [effectiveDate] Date when plan was applied.
  /// [plan] Plan id as published by Dynatrace.
  /// [usageType] Different usage type.
  GetMonitorPlan({
    required this.billingCycle,
    required this.effectiveDate,
    required this.plan,
    required this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': billingCycle,
      'effectiveDate': effectiveDate,
      'plan': plan,
      'usageType': usageType,
    };
  }

  factory GetMonitorPlan.fromMap(Map<String, dynamic> map) {
    return GetMonitorPlan(
      billingCycle: pulumi.Input.fromValue(map['billingCycle'] as String),
      effectiveDate: pulumi.Input.fromValue(map['effectiveDate'] as String),
      plan: pulumi.Input.fromValue(map['plan'] as String),
      usageType: pulumi.Input.fromValue(map['usageType'] as String),
    );
  }
}
