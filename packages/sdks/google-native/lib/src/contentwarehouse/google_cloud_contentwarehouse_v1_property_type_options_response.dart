// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_definition_response.dart';

/// Configurations for a nested structured data property.
class GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse {
  /// List of property definitions.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>> propertyDefinitions;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse].
  /// [propertyDefinitions] List of property definitions.
  GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse({
    required this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyDefinitions': pulumi.Input.mapInputValue<List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>, List<Map<String, dynamic>>>(propertyDefinitions, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1PropertyDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse(
      propertyDefinitions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>(map['propertyDefinitions']!, (value) => GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

