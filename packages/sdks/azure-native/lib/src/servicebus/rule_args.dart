// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';
import 'correlation_filter.dart';
import 'filter_type.dart';
import 'sql_filter.dart';

/// {@template pulumi_servicebus_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_rule_args_doc}
class RuleArgs {
  /// Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
  final pulumi.Input<Action>? action;
  /// Properties of correlationFilter
  final pulumi.Input<CorrelationFilter>? correlationFilter;
  /// Filter type that is evaluated against a BrokeredMessage.
  final pulumi.Input<FilterType>? filterType;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rule name.
  final pulumi.Input<String>? ruleName;
  /// Properties of sqlFilter
  final pulumi.Input<SqlFilter>? sqlFilter;
  /// The subscription name.
  final pulumi.Input<String> subscriptionName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [RuleArgs].
  /// [action] Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
  /// [correlationFilter] Properties of correlationFilter
  /// [filterType] Filter type that is evaluated against a BrokeredMessage.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The rule name.
  /// [sqlFilter] Properties of sqlFilter
  /// [subscriptionName] The subscription name.
  /// [topicName] The topic name.
  const RuleArgs({
    this.action,
    this.correlationFilter,
    this.filterType,
    required this.namespaceName,
    required this.resourceGroupName,
    this.ruleName,
    this.sqlFilter,
    required this.subscriptionName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<Action, Map<String, dynamic>>(action, (value) => value.toMap()),
      'correlationFilter': ?pulumi.Input.mapOptionalInputValue<CorrelationFilter, Map<String, dynamic>>(correlationFilter, (value) => value.toMap()),
      'filterType': ?pulumi.Input.mapOptionalInputValue<FilterType, String>(filterType, (value) => value.wireValue),
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'sqlFilter': ?pulumi.Input.mapOptionalInputValue<SqlFilter, Map<String, dynamic>>(sqlFilter, (value) => value.toMap()),
      'subscriptionName': subscriptionName,
      'topicName': topicName,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Action.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      correlationFilter: (() { final guardedValue = map['correlationFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CorrelationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterType: (() { final guardedValue = map['filterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilterType.fromValue(guardedValue as String)); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlFilter: (() { final guardedValue = map['sqlFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionName: pulumi.Input.fromValue(map['subscriptionName'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}

