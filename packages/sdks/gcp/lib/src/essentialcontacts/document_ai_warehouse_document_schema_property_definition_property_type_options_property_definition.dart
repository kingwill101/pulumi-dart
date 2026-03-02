// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition_property_type_options_property_definition_enum_type_options.dart';
import 'document_ai_warehouse_document_schema_property_definition_property_type_options_property_definition_schema_source.dart';

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition {
  /// Date time property. Not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>>? dateTimeTypeOptions;
  /// The display-name for the property, used for front-end.
  final pulumi.Input<String>? displayName;
  /// Enum/categorical property.
  /// Structure is documented below.
  final pulumi.Input<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions>? enumTypeOptions;
  /// Float property.
  final pulumi.Input<Map<String, dynamic>>? floatTypeOptions;
  /// Integer property.
  final pulumi.Input<Map<String, dynamic>>? integerTypeOptions;
  /// Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  final pulumi.Input<bool>? isFilterable;
  /// Whether the property is user supplied metadata.
  final pulumi.Input<bool>? isMetadata;
  /// Whether the property can have multiple values.
  final pulumi.Input<bool>? isRepeatable;
  /// Whether the property is mandatory.
  final pulumi.Input<bool>? isRequired;
  /// Indicates that the property should be included in a global search.
  final pulumi.Input<bool>? isSearchable;
  /// Map property.
  final pulumi.Input<Map<String, dynamic>>? mapTypeOptions;
  /// The name of the metadata property.
  final pulumi.Input<String> name;
  /// Stores the retrieval importance.
  /// Possible values are: `HIGHEST`, `HIGHER`, `HIGH`, `MEDIUM`, `LOW`, `LOWEST`.
  final pulumi.Input<String>? retrievalImportance;
  /// The schema source information.
  /// Structure is documented below.
  final pulumi.Input<List<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource>>? schemaSources;
  /// Text property.
  final pulumi.Input<Map<String, dynamic>>? textTypeOptions;
  /// Timestamp property. Not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>>? timestampTypeOptions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition].
  /// [dateTimeTypeOptions] Date time property. Not supported by CMEK compliant deployment.
  /// [displayName] The display-name for the property, used for front-end.
  /// [enumTypeOptions] Enum/categorical property.
  /// [floatTypeOptions] Float property.
  /// [integerTypeOptions] Integer property.
  /// [isFilterable] Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  /// [isMetadata] Whether the property is user supplied metadata.
  /// [isRepeatable] Whether the property can have multiple values.
  /// [isRequired] Whether the property is mandatory.
  /// [isSearchable] Indicates that the property should be included in a global search.
  /// [mapTypeOptions] Map property.
  /// [name] The name of the metadata property.
  /// [retrievalImportance] Stores the retrieval importance.
  /// [schemaSources] The schema source information.
  /// [textTypeOptions] Text property.
  /// [timestampTypeOptions] Timestamp property. Not supported by CMEK compliant deployment.
  DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition({
    this.dateTimeTypeOptions,
    this.displayName,
    this.enumTypeOptions,
    this.floatTypeOptions,
    this.integerTypeOptions,
    this.isFilterable,
    this.isMetadata,
    this.isRepeatable,
    this.isRequired,
    this.isSearchable,
    this.mapTypeOptions,
    required this.name,
    this.retrievalImportance,
    this.schemaSources,
    this.textTypeOptions,
    this.timestampTypeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTimeTypeOptions': ?dateTimeTypeOptions,
      'displayName': ?displayName,
      'enumTypeOptions': ?pulumi.Input.mapOptionalInputValue<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions, Map<String, dynamic>>(enumTypeOptions, (value) => value.toMap()),
      'floatTypeOptions': ?floatTypeOptions,
      'integerTypeOptions': ?integerTypeOptions,
      'isFilterable': ?isFilterable,
      'isMetadata': ?isMetadata,
      'isRepeatable': ?isRepeatable,
      'isRequired': ?isRequired,
      'isSearchable': ?isSearchable,
      'mapTypeOptions': ?mapTypeOptions,
      'name': name,
      'retrievalImportance': ?retrievalImportance,
      'schemaSources': ?pulumi.Input.mapOptionalInputValue<List<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource>, List<Map<String, dynamic>>>(schemaSources, (value) => pulumi.Input.encodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textTypeOptions': ?textTypeOptions,
      'timestampTypeOptions': ?timestampTypeOptions,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition(
      dateTimeTypeOptions: map['dateTimeTypeOptions'] == null ? null : ((map['dateTimeTypeOptions']! as Map).cast<String, dynamic>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enumTypeOptions: map['enumTypeOptions'] == null ? null : (DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions.fromMap((map['enumTypeOptions']! as Map).cast<String, dynamic>())).input(),
      floatTypeOptions: map['floatTypeOptions'] == null ? null : ((map['floatTypeOptions']! as Map).cast<String, dynamic>()).input(),
      integerTypeOptions: map['integerTypeOptions'] == null ? null : ((map['integerTypeOptions']! as Map).cast<String, dynamic>()).input(),
      isFilterable: map['isFilterable'] == null ? null : (map['isFilterable']! as bool).input(),
      isMetadata: map['isMetadata'] == null ? null : (map['isMetadata']! as bool).input(),
      isRepeatable: map['isRepeatable'] == null ? null : (map['isRepeatable']! as bool).input(),
      isRequired: map['isRequired'] == null ? null : (map['isRequired']! as bool).input(),
      isSearchable: map['isSearchable'] == null ? null : (map['isSearchable']! as bool).input(),
      mapTypeOptions: map['mapTypeOptions'] == null ? null : ((map['mapTypeOptions']! as Map).cast<String, dynamic>()).input(),
      name: (map['name'] as String).input(),
      retrievalImportance: map['retrievalImportance'] == null ? null : (map['retrievalImportance']! as String).input(),
      schemaSources: map['schemaSources'] == null ? null : (pulumi.Input.decodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource>(map['schemaSources']!, (value) => DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      textTypeOptions: map['textTypeOptions'] == null ? null : ((map['textTypeOptions']! as Map).cast<String, dynamic>()).input(),
      timestampTypeOptions: map['timestampTypeOptions'] == null ? null : ((map['timestampTypeOptions']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

