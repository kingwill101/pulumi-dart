// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAttributeDefinition.
class GetAttributeDefinitionHealthcareV1beta1Result {
  /// Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  final List<String> allowedValues;

  /// The category of the attribute. The value of this field cannot be changed after creation.
  final String category;

  /// Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  final List<String> consentDefaultValues;

  /// Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  final String dataMappingDefaultValue;

  /// Optional. A description of the attribute.
  final String description;

  /// Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  final String name;

  /// Creates a new [GetAttributeDefinitionHealthcareV1beta1Result].
  /// [allowedValues] Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  /// [category] The category of the attribute. The value of this field cannot be changed after creation.
  /// [consentDefaultValues] Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  /// [dataMappingDefaultValue] Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  /// [description] Optional. A description of the attribute.
  /// [name] Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  GetAttributeDefinitionHealthcareV1beta1Result({
    required this.allowedValues,
    required this.category,
    required this.consentDefaultValues,
    required this.dataMappingDefaultValue,
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
      'category': category,
      'consentDefaultValues': consentDefaultValues,
      'dataMappingDefaultValue': dataMappingDefaultValue,
      'description': description,
      'name': name,
    };
  }

  factory GetAttributeDefinitionHealthcareV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAttributeDefinitionHealthcareV1beta1Result(
      allowedValues: (map['allowedValues'] as List).cast<String>(),
      category: map['category'] as String,
      consentDefaultValues: (map['consentDefaultValues'] as List)
          .cast<String>(),
      dataMappingDefaultValue: map['dataMappingDefaultValue'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
    );
  }
}
