// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_subscription_rate_plan.dart';

/// {@template pulumi_index_account_subscription_account_subscription_args_doc}
/// The set of arguments for AccountSubscription.
/// {@endtemplate}
/// {@macro pulumi_index_account_subscription_account_subscription_args_doc}
class AccountSubscriptionArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// How often the subscription is renewed automatically.
  /// Available values: "weekly", "monthly", "quarterly", "yearly".
  final pulumi.Input<String?>? frequency;
  /// The rate plan applied to the subscription.
  final pulumi.Input<AccountSubscriptionRatePlan?>? ratePlan;

  /// Creates a new [AccountSubscriptionArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [frequency] How often the subscription is renewed automatically.
  /// [ratePlan] The rate plan applied to the subscription.
  const AccountSubscriptionArgs({
    this.accountId,
    this.frequency,
    this.ratePlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'frequency': ?frequency,
      'ratePlan': ?pulumi.Input.mapOptionalInputValue<AccountSubscriptionRatePlan, Map<String, dynamic>>(ratePlan, (value) => value.toMap()),
    };
  }

  factory AccountSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AccountSubscriptionArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ratePlan: (() { final guardedValue = map['ratePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
