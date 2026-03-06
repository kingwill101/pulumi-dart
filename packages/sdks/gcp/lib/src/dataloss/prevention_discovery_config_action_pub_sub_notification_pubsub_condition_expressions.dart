// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_pub_sub_notification_pubsub_condition_expressions_condition.dart';

class PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions {
  /// Conditions to apply to the expression
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition>>? conditions;
  /// The operator to apply to the collection of conditions
  /// Possible values are: `OR`, `AND`.
  final pulumi.Input<String>? logicalOperator;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions].
  /// [conditions] Conditions to apply to the expression
  /// [logicalOperator] The operator to apply to the collection of conditions
  const PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalOperator': ?logicalOperator,
    };
  }

  factory PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition>(guardedValue, (value) => PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logicalOperator: (() { final guardedValue = map['logicalOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

