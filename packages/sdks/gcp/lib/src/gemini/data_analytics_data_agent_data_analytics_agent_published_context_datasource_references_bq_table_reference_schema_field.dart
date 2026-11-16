// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchemaField {
  /// Optional. Field category.
  final pulumi.Input<String?>? category;
  /// Optional. A brief description of the field.
  final pulumi.Input<String?>? description;
  /// Optional. The mode of the field (e.g., NULLABLE, REPEATED).
  final pulumi.Input<String?>? mode;
  /// Optional. The name of the field.
  final pulumi.Input<String?>? name;
  /// Optional. Recursive property for nested schema structures, encoded as a JSON string representing a list of Field objects.
  final pulumi.Input<String?>? subfields;
  /// Optional. A list of alternative names or synonyms that can be used to refer to this field.
  final pulumi.Input<List<String>?>? synonyms;
  /// Optional. A list of tags or keywords associated with the field, used for categorization.
  final pulumi.Input<List<String>?>? tags;
  /// Optional. The type of the field.
  final pulumi.Input<String?>? type;
  /// Optional. Value format of the field.
  final pulumi.Input<String?>? valueFormat;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchemaField].
  /// [category] Optional. Field category.
  /// [description] Optional. A brief description of the field.
  /// [mode] Optional. The mode of the field (e.g., NULLABLE, REPEATED).
  /// [name] Optional. The name of the field.
  /// [subfields] Optional. Recursive property for nested schema structures, encoded as a JSON string representing a list of Field objects.
  /// [synonyms] Optional. A list of alternative names or synonyms that can be used to refer to this field.
  /// [tags] Optional. A list of tags or keywords associated with the field, used for categorization.
  /// [type] Optional. The type of the field.
  /// [valueFormat] Optional. Value format of the field.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchemaField({
    this.category,
    this.description,
    this.mode,
    this.name,
    this.subfields,
    this.synonyms,
    this.tags,
    this.type,
    this.valueFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'description': ?description,
      'mode': ?mode,
      'name': ?name,
      'subfields': ?subfields,
      'synonyms': ?synonyms,
      'tags': ?tags,
      'type': ?type,
      'valueFormat': ?valueFormat,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchemaField.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchemaField(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subfields: (() { final guardedValue = map['subfields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueFormat: (() { final guardedValue = map['valueFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
