// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_date_time_array_response.dart';
import 'google_cloud_contentwarehouse_v1_enum_array_response.dart';
import 'google_cloud_contentwarehouse_v1_float_array_response.dart';
import 'google_cloud_contentwarehouse_v1_integer_array_response.dart';
import 'google_cloud_contentwarehouse_v1_map_property_response.dart';
import 'google_cloud_contentwarehouse_v1_property_array_response.dart';
import 'google_cloud_contentwarehouse_v1_text_array_response.dart';
import 'google_cloud_contentwarehouse_v1_timestamp_array_response.dart';

/// Property of a document.
class GoogleCloudContentwarehouseV1PropertyResponse {
  /// Date time property values. It is not supported by CMEK compliant deployment.
  final pulumi.Input<GoogleCloudContentwarehouseV1DateTimeArrayResponse> dateTimeValues;
  /// Enum property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1EnumArrayResponse> enumValues;
  /// Float property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1FloatArrayResponse> floatValues;
  /// Integer property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1IntegerArrayResponse> integerValues;
  /// Map property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1MapPropertyResponse> mapProperty;
  /// Must match the name of a PropertyDefinition in the DocumentSchema.
  final pulumi.Input<String> name;
  /// Nested structured data property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1PropertyArrayResponse> propertyValues;
  /// String/text property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1TextArrayResponse> textValues;
  /// Timestamp property values. It is not supported by CMEK compliant deployment.
  final pulumi.Input<GoogleCloudContentwarehouseV1TimestampArrayResponse> timestampValues;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyResponse].
  /// [dateTimeValues] Date time property values. It is not supported by CMEK compliant deployment.
  /// [enumValues] Enum property values.
  /// [floatValues] Float property values.
  /// [integerValues] Integer property values.
  /// [mapProperty] Map property values.
  /// [name] Must match the name of a PropertyDefinition in the DocumentSchema.
  /// [propertyValues] Nested structured data property values.
  /// [textValues] String/text property values.
  /// [timestampValues] Timestamp property values. It is not supported by CMEK compliant deployment.
  const GoogleCloudContentwarehouseV1PropertyResponse({
    required this.dateTimeValues,
    required this.enumValues,
    required this.floatValues,
    required this.integerValues,
    required this.mapProperty,
    required this.name,
    required this.propertyValues,
    required this.textValues,
    required this.timestampValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTimeValues': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1DateTimeArrayResponse, Map<String, dynamic>>(dateTimeValues, (value) => value.toMap()),
      'enumValues': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1EnumArrayResponse, Map<String, dynamic>>(enumValues, (value) => value.toMap()),
      'floatValues': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1FloatArrayResponse, Map<String, dynamic>>(floatValues, (value) => value.toMap()),
      'integerValues': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1IntegerArrayResponse, Map<String, dynamic>>(integerValues, (value) => value.toMap()),
      'mapProperty': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1MapPropertyResponse, Map<String, dynamic>>(mapProperty, (value) => value.toMap()),
      'name': name,
      'propertyValues': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1PropertyArrayResponse, Map<String, dynamic>>(propertyValues, (value) => value.toMap()),
      'textValues': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1TextArrayResponse, Map<String, dynamic>>(textValues, (value) => value.toMap()),
      'timestampValues': pulumi.Input.mapInputValue<GoogleCloudContentwarehouseV1TimestampArrayResponse, Map<String, dynamic>>(timestampValues, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyResponse(
      dateTimeValues: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1DateTimeArrayResponse.fromMap((map['dateTimeValues']! as Map).cast<String, dynamic>())),
      enumValues: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1EnumArrayResponse.fromMap((map['enumValues']! as Map).cast<String, dynamic>())),
      floatValues: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1FloatArrayResponse.fromMap((map['floatValues']! as Map).cast<String, dynamic>())),
      integerValues: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1IntegerArrayResponse.fromMap((map['integerValues']! as Map).cast<String, dynamic>())),
      mapProperty: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1MapPropertyResponse.fromMap((map['mapProperty']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      propertyValues: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1PropertyArrayResponse.fromMap((map['propertyValues']! as Map).cast<String, dynamic>())),
      textValues: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1TextArrayResponse.fromMap((map['textValues']! as Map).cast<String, dynamic>())),
      timestampValues: pulumi.Input.fromValue(GoogleCloudContentwarehouseV1TimestampArrayResponse.fromMap((map['timestampValues']! as Map).cast<String, dynamic>())),
    );
  }
}
