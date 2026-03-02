// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_transition_route_trigger_fulfillment.dart';

class CxFlowTransitionRoute {
  /// The condition to evaluate against form parameters or session parameters.
  /// At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled.
  final pulumi.Input<String>? condition;
  /// The unique identifier of an Intent.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled.
  final pulumi.Input<String>? intent;
  /// (Output)
  /// The unique identifier of this transition route.
  final pulumi.Input<String>? name;
  /// The target flow to transition to.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first.
  /// Structure is documented below.
  final pulumi.Input<CxFlowTransitionRouteTriggerFulfillment>? triggerFulfillment;

  /// Creates a new [CxFlowTransitionRoute].
  /// [condition] The condition to evaluate against form parameters or session parameters.
  /// [intent] The unique identifier of an Intent.
  /// [name] (Output)
  /// [targetFlow] The target flow to transition to.
  /// [targetPage] The target page to transition to.
  /// [triggerFulfillment] The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first.
  CxFlowTransitionRoute({
    this.condition,
    this.intent,
    this.name,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'intent': ?intent,
      'name': ?name,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<CxFlowTransitionRouteTriggerFulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory CxFlowTransitionRoute.fromMap(Map<String, dynamic> map) {
    return CxFlowTransitionRoute(
      condition: map['condition'] == null ? null : (map['condition'] as String).input(),
      intent: map['intent'] == null ? null : (map['intent'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      targetFlow: map['targetFlow'] == null ? null : (map['targetFlow'] as String).input(),
      targetPage: map['targetPage'] == null ? null : (map['targetPage'] as String).input(),
      triggerFulfillment: map['triggerFulfillment'] == null ? null : (CxFlowTransitionRouteTriggerFulfillment.fromMap((map['triggerFulfillment'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

