// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorPlan {
  /// Specifies the billing cycles. Possible values are `MONTHLY`, `WEEKLY` and `YEARLY`. Defaults to `MONTHLY`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? billingCycle;
  /// Specifies the date when plan was applied. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String> effectiveDate;
  /// Specifies the plan id published by NewRelic. The only possible value is `newrelic-pay-as-you-go-free-live`. Defaults to `newrelic-pay-as-you-go-free-live`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? planId;
  /// Specifies the usage type. Possible values are `COMMITTED` and `PAYG`. Defaults to `PAYG`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? usageType;

  /// Creates a new [MonitorPlan].
  /// [billingCycle] Specifies the billing cycles. Possible values are `MONTHLY`, `WEEKLY` and `YEARLY`. Defaults to `MONTHLY`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [effectiveDate] Specifies the date when plan was applied. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [planId] Specifies the plan id published by NewRelic. The only possible value is `newrelic-pay-as-you-go-free-live`. Defaults to `newrelic-pay-as-you-go-free-live`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [usageType] Specifies the usage type. Possible values are `COMMITTED` and `PAYG`. Defaults to `PAYG`. Changing this forces a new Azure Native New Relic Monitor to be created.
  const MonitorPlan({
    this.billingCycle,
    required this.effectiveDate,
    this.planId,
    this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCycle': ?billingCycle,
      'effectiveDate': effectiveDate,
      'planId': ?planId,
      'usageType': ?usageType,
    };
  }

  factory MonitorPlan.fromMap(Map<String, dynamic> map) {
    return MonitorPlan(
      billingCycle: (() { final guardedValue = map['billingCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveDate: pulumi.Input.fromValue(map['effectiveDate'] as String),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageType: (() { final guardedValue = map['usageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

