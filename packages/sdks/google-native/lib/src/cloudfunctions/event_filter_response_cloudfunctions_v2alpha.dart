// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filters events based on exact matches on the CloudEvents attributes.
class EventFilterResponseCloudfunctionsV2alpha {
  /// The name of a CloudEvents attribute.
  final pulumi.Input<String> attribute;
  /// Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  final pulumi.Input<String> operator;
  /// The value for the attribute.
  final pulumi.Input<String> value;

  /// Creates a new [EventFilterResponseCloudfunctionsV2alpha].
  /// [attribute] The name of a CloudEvents attribute.
  /// [operator] Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  /// [value] The value for the attribute.
  EventFilterResponseCloudfunctionsV2alpha({
    required this.attribute,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'operator': operator,
      'value': value,
    };
  }

  factory EventFilterResponseCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return EventFilterResponseCloudfunctionsV2alpha(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

