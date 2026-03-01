// ignore_for_file: unused_element, unnecessary_cast

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
  final GoogleCloudContentwarehouseV1DateTimeArrayResponse dateTimeValues;
  /// Enum property values.
  final GoogleCloudContentwarehouseV1EnumArrayResponse enumValues;
  /// Float property values.
  final GoogleCloudContentwarehouseV1FloatArrayResponse floatValues;
  /// Integer property values.
  final GoogleCloudContentwarehouseV1IntegerArrayResponse integerValues;
  /// Map property values.
  final GoogleCloudContentwarehouseV1MapPropertyResponse mapProperty;
  /// Must match the name of a PropertyDefinition in the DocumentSchema.
  final String name;
  /// Nested structured data property values.
  final GoogleCloudContentwarehouseV1PropertyArrayResponse propertyValues;
  /// String/text property values.
  final GoogleCloudContentwarehouseV1TextArrayResponse textValues;
  /// Timestamp property values. It is not supported by CMEK compliant deployment.
  final GoogleCloudContentwarehouseV1TimestampArrayResponse timestampValues;

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
  GoogleCloudContentwarehouseV1PropertyResponse({
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
      'dateTimeValues': dateTimeValues.toMap(),
      'enumValues': enumValues.toMap(),
      'floatValues': floatValues.toMap(),
      'integerValues': integerValues.toMap(),
      'mapProperty': mapProperty.toMap(),
      'name': name,
      'propertyValues': propertyValues.toMap(),
      'textValues': textValues.toMap(),
      'timestampValues': timestampValues.toMap(),
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyResponse(
      dateTimeValues: GoogleCloudContentwarehouseV1DateTimeArrayResponse.fromMap((map['dateTimeValues'] as Map).cast<String, dynamic>()),
      enumValues: GoogleCloudContentwarehouseV1EnumArrayResponse.fromMap((map['enumValues'] as Map).cast<String, dynamic>()),
      floatValues: GoogleCloudContentwarehouseV1FloatArrayResponse.fromMap((map['floatValues'] as Map).cast<String, dynamic>()),
      integerValues: GoogleCloudContentwarehouseV1IntegerArrayResponse.fromMap((map['integerValues'] as Map).cast<String, dynamic>()),
      mapProperty: GoogleCloudContentwarehouseV1MapPropertyResponse.fromMap((map['mapProperty'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      propertyValues: GoogleCloudContentwarehouseV1PropertyArrayResponse.fromMap((map['propertyValues'] as Map).cast<String, dynamic>()),
      textValues: GoogleCloudContentwarehouseV1TextArrayResponse.fromMap((map['textValues'] as Map).cast<String, dynamic>()),
      timestampValues: GoogleCloudContentwarehouseV1TimestampArrayResponse.fromMap((map['timestampValues'] as Map).cast<String, dynamic>()),
    );
  }
}

