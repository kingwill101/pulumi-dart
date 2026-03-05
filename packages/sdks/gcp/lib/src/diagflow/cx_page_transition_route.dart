// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_transition_route_trigger_fulfillment.dart';

class CxPageTransitionRoute {
  /// The condition to evaluate against form parameters or session parameters.
  /// At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled.
  final pulumi.Input<String>? condition;
  /// The unique identifier of an Intent.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled.
  final pulumi.Input<String>? intent;
  /// (Output)
  /// The unique identifier of this transition route.
  final pulumi.Input<String>? name;
  /// The target flow to transition to.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first.
  /// Structure is documented below.
  final pulumi.Input<CxPageTransitionRouteTriggerFulfillment>? triggerFulfillment;

  /// Creates a new [CxPageTransitionRoute].
  /// [condition] The condition to evaluate against form parameters or session parameters.
  /// [intent] The unique identifier of an Intent.
  /// [name] (Output)
  /// [targetFlow] The target flow to transition to.
  /// [targetPage] The target page to transition to.
  /// [triggerFulfillment] The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first.
  CxPageTransitionRoute({
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
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<CxPageTransitionRouteTriggerFulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory CxPageTransitionRoute.fromMap(Map<String, dynamic> map) {
    return CxPageTransitionRoute(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetFlow: (() { final guardedValue = map['targetFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPage: (() { final guardedValue = map['targetPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerFulfillment: (() { final guardedValue = map['triggerFulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageTransitionRouteTriggerFulfillment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

