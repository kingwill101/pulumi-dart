// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_pub_sub_notification_pubsub_condition_expressions.dart';

class PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition {
  /// An expression
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions>? expressions;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition].
  /// [expressions] An expression
  PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions, Map<String, dynamic>>(expressions, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition(
      expressions: (() { final guardedValue = map['expressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

