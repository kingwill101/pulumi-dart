// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_enum_type_options_response.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_schema_source_response.dart';
import 'google_cloud_contentwarehouse_v1_property_type_options_response.dart';

/// Defines the metadata for a schema property.
class GoogleCloudContentwarehouseV1PropertyDefinitionResponse {
  /// Date time property. It is not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>> dateTimeTypeOptions;
  /// The display-name for the property, used for front-end.
  final pulumi.Input<String> displayName;
  /// Enum/categorical property.
  final pulumi.Input<GoogleCloudContentwarehouseV1EnumTypeOptionsResponse> enumTypeOptions;
  /// Float property.
  final pulumi.Input<Map<String, dynamic>> floatTypeOptions;
  /// Integer property.
  final pulumi.Input<Map<String, dynamic>> integerTypeOptions;
  /// Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  final pulumi.Input<bool> isFilterable;
  /// Whether the property is user supplied metadata. This out-of-the box placeholder setting can be used to tag derived properties. Its value and interpretation logic should be implemented by API user.
  final pulumi.Input<bool> isMetadata;
  /// Whether the property can have multiple values.
  final pulumi.Input<bool> isRepeatable;
  /// Whether the property is mandatory. Default is 'false', i.e. populating property value can be skipped. If 'true' then user must populate the value for this property.
  final pulumi.Input<bool> isRequired;
  /// Indicates that the property should be included in a global search.
  final pulumi.Input<bool> isSearchable;
  /// Map property.
  final pulumi.Input<Map<String, dynamic>> mapTypeOptions;
  /// The name of the metadata property. Must be unique within a document schema and is case insensitive. Names must be non-blank, start with a letter, and can contain alphanumeric characters and: /, :, -, _, and .
  final pulumi.Input<String> name;
  /// Nested structured data property.
  final pulumi.Input<GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse> propertyTypeOptions;
  /// The retrieval importance of the property during search.
  final pulumi.Input<String> retrievalImportance;
  /// The mapping information between this property to another schema source.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse>> schemaSources;
  /// Text/string property.
  final pulumi.Input<Map<String, dynamic>> textTypeOptions;
  /// Timestamp property. It is not supported by CMEK compliant deployment.
  final pulumi.Input<Map<String, dynamic>> timestampTypeOptions;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyDefinitionResponse].
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
  const GoogleCloudContentwarehouseV1PropertyDefinitionResponse({
    required this.dateTimeTypeOptions,
    required this.displayName,
    required this.enumTypeOptions,
    required this.floatTypeOptions,
    required this.integerTypeOptions,
    required this.isFilterable,
    required this.isMetadata,
    required this.isRepeatable,
    required this.isRequired,
    required this.isSearchable,
    required this.mapTypeOptions,
    required this.name,
    required this.propertyTypeOptions,
    required this.retrievalImportance,
    required this.schemaSources,
    required this.textTypeOptions,
    required this.timestampTypeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTimeTypeOptions': dateTimeTypeOptions,
      'displayName': displayName,
      'enumTypeOptions': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1EnumTypeOptionsResponse, Map<String, dynamic>>(enumTypeOptions, (value) => value.toMap()),
      'floatTypeOptions': floatTypeOptions,
      'integerTypeOptions': integerTypeOptions,
      'isFilterable': isFilterable,
      'isMetadata': isMetadata,
      'isRepeatable': isRepeatable,
      'isRequired': isRequired,
      'isSearchable': isSearchable,
      'mapTypeOptions': mapTypeOptions,
      'name': name,
      'propertyTypeOptions': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse, Map<String, dynamic>>(propertyTypeOptions, (value) => value.toMap()),
      'retrievalImportance': retrievalImportance,
      'schemaSources': pulumi.Input.mapInputValue<List<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse>, List<Map<String, dynamic>>>(schemaSources, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textTypeOptions': textTypeOptions,
      'timestampTypeOptions': timestampTypeOptions,
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyDefinitionResponse(
      dateTimeTypeOptions: pulumi.Input.fromValue((map['dateTimeTypeOptions']! as Map).cast<String, dynamic>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enumTypeOptions: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1EnumTypeOptionsResponse.fromMap((map['enumTypeOptions']! as Map).cast<String, dynamic>())),
      floatTypeOptions: pulumi.Input.fromValue((map['floatTypeOptions']! as Map).cast<String, dynamic>()),
      integerTypeOptions: pulumi.Input.fromValue((map['integerTypeOptions']! as Map).cast<String, dynamic>()),
      isFilterable: pulumi.Input.fromValue(map['isFilterable'] as bool),
      isMetadata: pulumi.Input.fromValue(map['isMetadata'] as bool),
      isRepeatable: pulumi.Input.fromValue(map['isRepeatable'] as bool),
      isRequired: pulumi.Input.fromValue(map['isRequired'] as bool),
      isSearchable: pulumi.Input.fromValue(map['isSearchable'] as bool),
      mapTypeOptions: pulumi.Input.fromValue((map['mapTypeOptions']! as Map).cast<String, dynamic>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      propertyTypeOptions: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse.fromMap((map['propertyTypeOptions']! as Map).cast<String, dynamic>())),
      retrievalImportance: pulumi.Input.fromValue(map['retrievalImportance'] as String),
      schemaSources: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse>(map['schemaSources']!, (value) => GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      textTypeOptions: pulumi.Input.fromValue((map['textTypeOptions']! as Map).cast<String, dynamic>()),
      timestampTypeOptions: pulumi.Input.fromValue((map['timestampTypeOptions']! as Map).cast<String, dynamic>()),
    );
  }
}
