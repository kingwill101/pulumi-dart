// ignore_for_file: unused_element, unnecessary_cast


/// An attribute value for a Consent or User data mapping. Each Attribute must have a corresponding AttributeDefinition in the consent store that defines the default and allowed values.
class AttributeHealthcareV1beta1 {
  /// Indicates the name of an attribute defined in the consent store.
  final String? attributeDefinitionId;
  /// The value of the attribute. Must be an acceptable value as defined in the consent store. For example, if the consent store defines "data type" with acceptable values "questionnaire" and "step-count", when the attribute name is data type, this field must contain one of those values.
  final List<String>? values;

  /// Creates a new [AttributeHealthcareV1beta1].
  /// [attributeDefinitionId] Indicates the name of an attribute defined in the consent store.
  /// [values] The value of the attribute. Must be an acceptable value as defined in the consent store. For example, if the consent store defines "data type" with acceptable values "questionnaire" and "step-count", when the attribute name is data type, this field must contain one of those values.
  AttributeHealthcareV1beta1({
    this.attributeDefinitionId,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeDefinitionId': ?attributeDefinitionId,
      'values': ?values,
    };
  }

  factory AttributeHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return AttributeHealthcareV1beta1(
      attributeDefinitionId: map['attributeDefinitionId'] == null ? null : map['attributeDefinitionId'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

