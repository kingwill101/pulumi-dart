// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleTemplateReferenceValue {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// The string representation of the parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [DatascanDataQualitySpecRuleTemplateReferenceValue].
  /// [name] The identifier for this object. Format specified above.
  /// [value] The string representation of the parameter value.
  const DatascanDataQualitySpecRuleTemplateReferenceValue({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DatascanDataQualitySpecRuleTemplateReferenceValue.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleTemplateReferenceValue(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
