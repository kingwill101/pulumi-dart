// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAttributeDefinition.
class GetAttributeDefinitionResult {
  /// Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  final List<String>? allowedValues;
  /// The category of the attribute. The value of this field cannot be changed after creation.
  final String? category;
  /// Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  final List<String>? consentDefaultValues;
  /// Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  final String? dataMappingDefaultValue;
  /// Optional. A description of the attribute.
  final String? description;
  /// Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  final String? name;

  /// Creates a new [GetAttributeDefinitionResult].
  /// [allowedValues] Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  /// [category] The category of the attribute. The value of this field cannot be changed after creation.
  /// [consentDefaultValues] Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  /// [dataMappingDefaultValue] Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  /// [description] Optional. A description of the attribute.
  /// [name] Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  const GetAttributeDefinitionResult({
    this.allowedValues,
    this.category,
    this.consentDefaultValues,
    this.dataMappingDefaultValue,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'category': ?category,
      'consentDefaultValues': ?consentDefaultValues,
      'dataMappingDefaultValue': ?dataMappingDefaultValue,
      'description': ?description,
      'name': ?name,
    };
  }

  factory GetAttributeDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetAttributeDefinitionResult(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consentDefaultValues: (() { final guardedValue = map['consentDefaultValues']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataMappingDefaultValue: (() { final guardedValue = map['dataMappingDefaultValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
