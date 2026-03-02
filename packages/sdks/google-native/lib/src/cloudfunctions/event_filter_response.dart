// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filters events based on exact matches on the CloudEvents attributes.
class EventFilterResponse {
  /// The name of a CloudEvents attribute.
  final pulumi.Input<String> attribute;
  /// Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  final pulumi.Input<String> operator;
  /// The value for the attribute.
  final pulumi.Input<String> value;

  /// Creates a new [EventFilterResponse].
  /// [attribute] The name of a CloudEvents attribute.
  /// [operator] Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  /// [value] The value for the attribute.
  EventFilterResponse({
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

  factory EventFilterResponse.fromMap(Map<String, dynamic> map) {
    return EventFilterResponse(
      attribute: (map['attribute'] as String).input(),
      operator: (map['operator'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

