// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_operator.dart';

class TagCondition {
  /// The tag key.
  final pulumi.Input<String> key;
  /// How the tag is compared. Defaults to `equals`.
  final pulumi.Input<TagOperator?>? operator;
  /// The tag value. Required with `equals` and `notEquals`, and not allowed with `exists` and `notExists`.
  final pulumi.Input<String?>? value;

  /// Creates a new [TagCondition].
  /// [key] The tag key.
  /// [operator] How the tag is compared. Defaults to `equals`.
  /// [value] The tag value. Required with `equals` and `notEquals`, and not allowed with `exists` and `notExists`.
  const TagCondition({
    required this.key,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': ?pulumi.Input.mapOptionalInputValue<TagOperator, String>(operator, (value) => value.wireValue),
      'value': ?value,
    };
  }

  factory TagCondition.fromMap(Map<String, dynamic> map) {
    return TagCondition(
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagOperator.fromValue(guardedValue as String)); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
