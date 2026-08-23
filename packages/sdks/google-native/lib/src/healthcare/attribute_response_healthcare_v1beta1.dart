// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An attribute value for a Consent or User data mapping. Each Attribute must have a corresponding AttributeDefinition in the consent store that defines the default and allowed values.
class AttributeResponseHealthcareV1beta1 {
  /// Indicates the name of an attribute defined in the consent store.
  final pulumi.Input<String> attributeDefinitionId;
  /// The value of the attribute. Must be an acceptable value as defined in the consent store. For example, if the consent store defines "data type" with acceptable values "questionnaire" and "step-count", when the attribute name is data type, this field must contain one of those values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AttributeResponseHealthcareV1beta1].
  /// [attributeDefinitionId] Indicates the name of an attribute defined in the consent store.
  /// [values] The value of the attribute. Must be an acceptable value as defined in the consent store. For example, if the consent store defines "data type" with acceptable values "questionnaire" and "step-count", when the attribute name is data type, this field must contain one of those values.
  const AttributeResponseHealthcareV1beta1({
    required this.attributeDefinitionId,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeDefinitionId': attributeDefinitionId,
      'values': values,
    };
  }

  factory AttributeResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return AttributeResponseHealthcareV1beta1(
      attributeDefinitionId: pulumi.Input.fromValue(map['attributeDefinitionId'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
