// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition_enum_type_options.dart';
import 'document_ai_warehouse_document_schema_property_definition_property_type_options.dart';
import 'document_ai_warehouse_document_schema_property_definition_schema_source.dart';

class DocumentAiWarehouseDocumentSchemaPropertyDefinition {
  /// Date time property. Not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>>? dateTimeTypeOptions;
  /// The display-name for the property, used for front-end.
  final pulumi.Input<String>? displayName;
  /// Enum/categorical property.
  /// Structure is documented below.
  final pulumi.Input<DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions>? enumTypeOptions;
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
  /// Nested structured data property.
  /// Structure is documented below.
  final pulumi.Input<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions>? propertyTypeOptions;
  /// Stores the retrieval importance.
  /// Possible values are: `HIGHEST`, `HIGHER`, `HIGH`, `MEDIUM`, `LOW`, `LOWEST`.
  final pulumi.Input<String>? retrievalImportance;
  /// The schema source information.
  /// Structure is documented below.
  final pulumi.Input<List<DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource>>? schemaSources;
  /// Text property.
  final pulumi.Input<Map<String, dynamic>>? textTypeOptions;
  /// Timestamp property. Not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>>? timestampTypeOptions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinition].
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
  /// [propertyTypeOptions] Nested structured data property.
  /// [retrievalImportance] Stores the retrieval importance.
  /// [schemaSources] The schema source information.
  /// [textTypeOptions] Text property.
  /// [timestampTypeOptions] Timestamp property. Not supported by CMEK compliant deployment.
  DocumentAiWarehouseDocumentSchemaPropertyDefinition({
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
    this.propertyTypeOptions,
    this.retrievalImportance,
    this.schemaSources,
    this.textTypeOptions,
    this.timestampTypeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTimeTypeOptions': ?dateTimeTypeOptions,
      'displayName': ?displayName,
      'enumTypeOptions': ?pulumi.Input.mapOptionalInputValue<DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions, Map<String, dynamic>>(enumTypeOptions, (value) => value.toMap()),
      'floatTypeOptions': ?floatTypeOptions,
      'integerTypeOptions': ?integerTypeOptions,
      'isFilterable': ?isFilterable,
      'isMetadata': ?isMetadata,
      'isRepeatable': ?isRepeatable,
      'isRequired': ?isRequired,
      'isSearchable': ?isSearchable,
      'mapTypeOptions': ?mapTypeOptions,
      'name': name,
      'propertyTypeOptions': ?pulumi.Input.mapOptionalInputValue<DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions, Map<String, dynamic>>(propertyTypeOptions, (value) => value.toMap()),
      'retrievalImportance': ?retrievalImportance,
      'schemaSources': ?pulumi.Input.mapOptionalInputValue<List<DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource>, List<Map<String, dynamic>>>(schemaSources, (value) => pulumi.Input.encodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textTypeOptions': ?textTypeOptions,
      'timestampTypeOptions': ?timestampTypeOptions,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinition.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinition(
      dateTimeTypeOptions: (() { final guardedValue = map['dateTimeTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumTypeOptions: (() { final guardedValue = map['enumTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      floatTypeOptions: (() { final guardedValue = map['floatTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      integerTypeOptions: (() { final guardedValue = map['integerTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      isFilterable: (() { final guardedValue = map['isFilterable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isMetadata: (() { final guardedValue = map['isMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRepeatable: (() { final guardedValue = map['isRepeatable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRequired: (() { final guardedValue = map['isRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSearchable: (() { final guardedValue = map['isSearchable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mapTypeOptions: (() { final guardedValue = map['mapTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      propertyTypeOptions: (() { final guardedValue = map['propertyTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retrievalImportance: (() { final guardedValue = map['retrievalImportance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaSources: (() { final guardedValue = map['schemaSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource>(guardedValue, (value) => DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      textTypeOptions: (() { final guardedValue = map['textTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      timestampTypeOptions: (() { final guardedValue = map['timestampTypeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

