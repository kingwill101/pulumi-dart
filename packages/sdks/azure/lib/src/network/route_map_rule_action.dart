// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule_action_parameter.dart';

class RouteMapRuleAction {
  /// A `parameter` block as defined below. Required if `type` is anything other than `Drop`.
  final pulumi.Input<List<RouteMapRuleActionParameter>?>? parameters;
  /// The type of the action to be taken. Possible values are `Add`, `Drop`, `Remove`, `Replace` and `Unknown`.
  final pulumi.Input<String> type;

  /// Creates a new [RouteMapRuleAction].
  /// [parameters] A `parameter` block as defined below. Required if `type` is anything other than `Drop`.
  /// [type] The type of the action to be taken. Possible values are `Add`, `Drop`, `Remove`, `Replace` and `Unknown`.
  const RouteMapRuleAction({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RouteMapRuleActionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RouteMapRuleActionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory RouteMapRuleAction.fromMap(Map<String, dynamic> map) {
    return RouteMapRuleAction(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteMapRuleActionParameter>(guardedValue, (value) => RouteMapRuleActionParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
