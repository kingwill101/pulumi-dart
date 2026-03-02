// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_enum_type_options.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_retrieval_importance.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_schema_source.dart';
import 'google_cloud_contentwarehouse_v1_property_type_options.dart';

/// Defines the metadata for a schema property.
class GoogleCloudContentwarehouseV1PropertyDefinition {
  /// Date time property. It is not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>>? dateTimeTypeOptions;
  /// The display-name for the property, used for front-end.
  final pulumi.Input<String>? displayName;
  /// Enum/categorical property.
  final pulumi.Input<GoogleCloudContentwarehouseV1EnumTypeOptions>? enumTypeOptions;
  /// Float property.
  final pulumi.Input<Map<String, dynamic>>? floatTypeOptions;
  /// Integer property.
  final pulumi.Input<Map<String, dynamic>>? integerTypeOptions;
  /// Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  final pulumi.Input<bool>? isFilterable;
  /// Whether the property is user supplied metadata. This out-of-the box placeholder setting can be used to tag derived properties. Its value and interpretation logic should be implemented by API user.
  final pulumi.Input<bool>? isMetadata;
  /// Whether the property can have multiple values.
  final pulumi.Input<bool>? isRepeatable;
  /// Whether the property is mandatory. Default is 'false', i.e. populating property value can be skipped. If 'true' then user must populate the value for this property.
  final pulumi.Input<bool>? isRequired;
  /// Indicates that the property should be included in a global search.
  final pulumi.Input<bool>? isSearchable;
  /// Map property.
  final pulumi.Input<Map<String, dynamic>>? mapTypeOptions;
  /// The name of the metadata property. Must be unique within a document schema and is case insensitive. Names must be non-blank, start with a letter, and can contain alphanumeric characters and: /, :, -, _, and .
  final pulumi.Input<String> name;
  /// Nested structured data property.
  final pulumi.Input<GoogleCloudContentwarehouseV1PropertyTypeOptions>? propertyTypeOptions;
  /// The retrieval importance of the property during search.
  final pulumi.Input<GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance>? retrievalImportance;
  /// The mapping information between this property to another schema source.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>>? schemaSources;
  /// Text/string property.
  final pulumi.Input<Map<String, dynamic>>? textTypeOptions;
  /// Timestamp property. It is not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>>? timestampTypeOptions;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyDefinition].
  /// [dateTimeTypeOptions] Date time property. It is not supported by CMEK compliant deployment.
  /// [displayName] The display-name for the property, used for front-end.
  /// [enumTypeOptions] Enum/categorical property.
  /// [floatTypeOptions] Float property.
  /// [integerTypeOptions] Integer property.
  /// [isFilterable] Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  /// [isMetadata] Whether the property is user supplied metadata. This out-of-the box placeholder setting can be used to tag derived properties. Its value and interpretation logic should be implemented by API user.
  /// [isRepeatable] Whether the property can have multiple values.
  /// [isRequired] Whether the property is mandatory. Default is 'false', i.e. populating property value can be skipped. If 'true' then user must populate the value for this property.
  /// [isSearchable] Indicates that the property should be included in a global search.
  /// [mapTypeOptions] Map property.
  /// [name] The name of the metadata property. Must be unique within a document schema and is case insensitive. Names must be non-blank, start with a letter, and can contain alphanumeric characters and: /, :, -, _, and .
  /// [propertyTypeOptions] Nested structured data property.
  /// [retrievalImportance] The retrieval importance of the property during search.
  /// [schemaSources] The mapping information between this property to another schema source.
  /// [textTypeOptions] Text/string property.
  /// [timestampTypeOptions] Timestamp property. It is not supported by CMEK compliant deployment.
  GoogleCloudContentwarehouseV1PropertyDefinition({
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
      'enumTypeOptions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1EnumTypeOptions, Map<String, dynamic>>(enumTypeOptions, (value) => value.toMap()),
      'floatTypeOptions': ?floatTypeOptions,
      'integerTypeOptions': ?integerTypeOptions,
      'isFilterable': ?isFilterable,
      'isMetadata': ?isMetadata,
      'isRepeatable': ?isRepeatable,
      'isRequired': ?isRequired,
      'isSearchable': ?isSearchable,
      'mapTypeOptions': ?mapTypeOptions,
      'name': name,
      'propertyTypeOptions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1PropertyTypeOptions, Map<String, dynamic>>(propertyTypeOptions, (value) => value.toMap()),
      'retrievalImportance': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance, String>(retrievalImportance, (value) => value.value),
      'schemaSources': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>, List<Map<String, dynamic>>>(schemaSources, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textTypeOptions': ?textTypeOptions,
      'timestampTypeOptions': ?timestampTypeOptions,
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyDefinition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyDefinition(
      dateTimeTypeOptions: map['dateTimeTypeOptions'] == null ? null : ((map['dateTimeTypeOptions']! as Map).cast<String, dynamic>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enumTypeOptions: map['enumTypeOptions'] == null ? null : (GoogleCloudContentwarehouseV1EnumTypeOptions.fromMap((map['enumTypeOptions']! as Map).cast<String, dynamic>())).input(),
      floatTypeOptions: map['floatTypeOptions'] == null ? null : ((map['floatTypeOptions']! as Map).cast<String, dynamic>()).input(),
      integerTypeOptions: map['integerTypeOptions'] == null ? null : ((map['integerTypeOptions']! as Map).cast<String, dynamic>()).input(),
      isFilterable: map['isFilterable'] == null ? null : (map['isFilterable']! as bool).input(),
      isMetadata: map['isMetadata'] == null ? null : (map['isMetadata']! as bool).input(),
      isRepeatable: map['isRepeatable'] == null ? null : (map['isRepeatable']! as bool).input(),
      isRequired: map['isRequired'] == null ? null : (map['isRequired']! as bool).input(),
      isSearchable: map['isSearchable'] == null ? null : (map['isSearchable']! as bool).input(),
      mapTypeOptions: map['mapTypeOptions'] == null ? null : ((map['mapTypeOptions']! as Map).cast<String, dynamic>()).input(),
      name: (map['name'] as String).input(),
      propertyTypeOptions: map['propertyTypeOptions'] == null ? null : (GoogleCloudContentwarehouseV1PropertyTypeOptions.fromMap((map['propertyTypeOptions']! as Map).cast<String, dynamic>())).input(),
      retrievalImportance: map['retrievalImportance'] == null ? null : (GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance.fromValue(map['retrievalImportance']! as String)).input(),
      schemaSources: map['schemaSources'] == null ? null : (pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>(map['schemaSources']!, (value) => GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      textTypeOptions: map['textTypeOptions'] == null ? null : ((map['textTypeOptions']! as Map).cast<String, dynamic>()).input(),
      timestampTypeOptions: map['timestampTypeOptions'] == null ? null : ((map['timestampTypeOptions']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

