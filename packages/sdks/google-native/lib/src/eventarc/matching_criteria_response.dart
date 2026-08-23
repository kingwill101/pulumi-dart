// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Matches events based on exact matches on the CloudEvents attributes.
class MatchingCriteriaResponse {
  /// The name of a CloudEvents attribute. Currently, only a subset of attributes can be specified. All triggers MUST provide a matching criteria for the 'type' attribute.
  final pulumi.Input<String> attribute;
  /// The value for the attribute.
  final pulumi.Input<String> value;

  /// Creates a new [MatchingCriteriaResponse].
  /// [attribute] The name of a CloudEvents attribute. Currently, only a subset of attributes can be specified. All triggers MUST provide a matching criteria for the 'type' attribute.
  /// [value] The value for the attribute.
  const MatchingCriteriaResponse({
    required this.attribute,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'value': value,
    };
  }

  factory MatchingCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return MatchingCriteriaResponse(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
