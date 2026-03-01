// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_rule_correlation_filter.dart';

/// Input properties used for looking up and filtering SubscriptionRule resources.
class SubscriptionRuleState {
  /// Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage.
  final pulumi.Input<String>? action;
  /// A `correlation_filter` block as documented below to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`.
  final pulumi.Input<SubscriptionRuleCorrelationFilter>? correlationFilter;
  /// Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`.
  final pulumi.Input<String>? filterType;
  /// Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`.
  final pulumi.Input<String>? sqlFilter;
  final pulumi.Input<int>? sqlFilterCompatibilityLevel;
  /// The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [SubscriptionRuleState].
  /// [action] Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage.
  /// [correlationFilter] A `correlation_filter` block as documented below to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`.
  /// [filterType] Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`.
  /// [name] Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created.
  /// [sqlFilter] Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`.
  /// [sqlFilterCompatibilityLevel] Optional.
  /// [subscriptionId] The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created.
  SubscriptionRuleState({
    pulumi.Output<String>? action,
    pulumi.Output<SubscriptionRuleCorrelationFilter>? correlationFilter,
    pulumi.Output<String>? filterType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sqlFilter,
    pulumi.Output<int>? sqlFilterCompatibilityLevel,
    pulumi.Output<String>? subscriptionId,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      correlationFilter = pulumi.Input.asOptionalInput<SubscriptionRuleCorrelationFilter>(correlationFilter),
      filterType = pulumi.Input.asOptionalInput<String>(filterType),
      name = pulumi.Input.asOptionalInput<String>(name),
      sqlFilter = pulumi.Input.asOptionalInput<String>(sqlFilter),
      sqlFilterCompatibilityLevel = pulumi.Input.asOptionalInput<int>(sqlFilterCompatibilityLevel),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'correlationFilter': ?pulumi.Input.mapOptionalInputValue<SubscriptionRuleCorrelationFilter, Map<String, dynamic>>(correlationFilter, (value) => value.toMap()),
      'filterType': ?filterType,
      'name': ?name,
      'sqlFilter': ?sqlFilter,
      'sqlFilterCompatibilityLevel': ?sqlFilterCompatibilityLevel,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory SubscriptionRuleState.fromMap(Map<String, dynamic> map) {
    return SubscriptionRuleState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      correlationFilter: map['correlationFilter'] == null ? null : pulumi.Output.create<SubscriptionRuleCorrelationFilter>(SubscriptionRuleCorrelationFilter.fromMap((map['correlationFilter'] as Map).cast<String, dynamic>())),
      filterType: map['filterType'] == null ? null : pulumi.Output.create<String>(map['filterType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sqlFilter: map['sqlFilter'] == null ? null : pulumi.Output.create<String>(map['sqlFilter'] as String),
      sqlFilterCompatibilityLevel: map['sqlFilterCompatibilityLevel'] == null ? null : pulumi.Output.create<int>(map['sqlFilterCompatibilityLevel'] as int),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

