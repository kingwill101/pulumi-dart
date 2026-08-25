// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerMatchingCriteria {
  /// Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. All triggers MUST provide a filter for the 'type' attribute.
  final pulumi.Input<String> attribute;
  /// Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  final pulumi.Input<String?>? operator;
  /// Required. The value for the attribute. See https://cloud.google.com/eventarc/docs/creating-triggers#trigger-gcloud for available values.
  final pulumi.Input<String> value;

  /// Creates a new [TriggerMatchingCriteria].
  /// [attribute] Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. All triggers MUST provide a filter for the 'type' attribute.
  /// [operator] Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  /// [value] Required. The value for the attribute. See https://cloud.google.com/eventarc/docs/creating-triggers#trigger-gcloud for available values.
  const TriggerMatchingCriteria({
    required this.attribute,
    this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'operator': ?operator,
      'value': value,
    };
  }

  factory TriggerMatchingCriteria.fromMap(Map<String, dynamic> map) {
    return TriggerMatchingCriteria(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
