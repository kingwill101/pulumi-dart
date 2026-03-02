// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_date_time_array.dart';
import 'google_cloud_contentwarehouse_v1_enum_array.dart';
import 'google_cloud_contentwarehouse_v1_float_array.dart';
import 'google_cloud_contentwarehouse_v1_integer_array.dart';
import 'google_cloud_contentwarehouse_v1_map_property.dart';
import 'google_cloud_contentwarehouse_v1_property_array.dart';
import 'google_cloud_contentwarehouse_v1_text_array.dart';
import 'google_cloud_contentwarehouse_v1_timestamp_array.dart';

/// Property of a document.
class GoogleCloudContentwarehouseV1Property {
  /// Date time property values. It is not supported by CMEK compliant deployment.
  final pulumi.Input<GoogleCloudContentwarehouseV1DateTimeArray>? dateTimeValues;
  /// Enum property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1EnumArray>? enumValues;
  /// Float property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1FloatArray>? floatValues;
  /// Integer property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1IntegerArray>? integerValues;
  /// Map property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1MapProperty>? mapProperty;
  /// Must match the name of a PropertyDefinition in the DocumentSchema.
  final pulumi.Input<String> name;
  /// Nested structured data property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1PropertyArray>? propertyValues;
  /// String/text property values.
  final pulumi.Input<GoogleCloudContentwarehouseV1TextArray>? textValues;
  /// Timestamp property values. It is not supported by CMEK compliant deployment.
  final pulumi.Input<GoogleCloudContentwarehouseV1TimestampArray>? timestampValues;

  /// Creates a new [GoogleCloudContentwarehouseV1Property].
  /// [dateTimeValues] Date time property values. It is not supported by CMEK compliant deployment.
  /// [enumValues] Enum property values.
  /// [floatValues] Float property values.
  /// [integerValues] Integer property values.
  /// [mapProperty] Map property values.
  /// [name] Must match the name of a PropertyDefinition in the DocumentSchema.
  /// [propertyValues] Nested structured data property values.
  /// [textValues] String/text property values.
  /// [timestampValues] Timestamp property values. It is not supported by CMEK compliant deployment.
  GoogleCloudContentwarehouseV1Property({
    this.dateTimeValues,
    this.enumValues,
    this.floatValues,
    this.integerValues,
    this.mapProperty,
    required this.name,
    this.propertyValues,
    this.textValues,
    this.timestampValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTimeValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1DateTimeArray, Map<String, dynamic>>(dateTimeValues, (value) => value.toMap()),
      'enumValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1EnumArray, Map<String, dynamic>>(enumValues, (value) => value.toMap()),
      'floatValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1FloatArray, Map<String, dynamic>>(floatValues, (value) => value.toMap()),
      'integerValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1IntegerArray, Map<String, dynamic>>(integerValues, (value) => value.toMap()),
      'mapProperty': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1MapProperty, Map<String, dynamic>>(mapProperty, (value) => value.toMap()),
      'name': name,
      'propertyValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1PropertyArray, Map<String, dynamic>>(propertyValues, (value) => value.toMap()),
      'textValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1TextArray, Map<String, dynamic>>(textValues, (value) => value.toMap()),
      'timestampValues': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1TimestampArray, Map<String, dynamic>>(timestampValues, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1Property.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1Property(
      dateTimeValues: map['dateTimeValues'] == null ? null : (GoogleCloudContentwarehouseV1DateTimeArray.fromMap((map['dateTimeValues']! as Map).cast<String, dynamic>())).input(),
      enumValues: map['enumValues'] == null ? null : (GoogleCloudContentwarehouseV1EnumArray.fromMap((map['enumValues']! as Map).cast<String, dynamic>())).input(),
      floatValues: map['floatValues'] == null ? null : (GoogleCloudContentwarehouseV1FloatArray.fromMap((map['floatValues']! as Map).cast<String, dynamic>())).input(),
      integerValues: map['integerValues'] == null ? null : (GoogleCloudContentwarehouseV1IntegerArray.fromMap((map['integerValues']! as Map).cast<String, dynamic>())).input(),
      mapProperty: map['mapProperty'] == null ? null : (GoogleCloudContentwarehouseV1MapProperty.fromMap((map['mapProperty']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      propertyValues: map['propertyValues'] == null ? null : (GoogleCloudContentwarehouseV1PropertyArray.fromMap((map['propertyValues']! as Map).cast<String, dynamic>())).input(),
      textValues: map['textValues'] == null ? null : (GoogleCloudContentwarehouseV1TextArray.fromMap((map['textValues']! as Map).cast<String, dynamic>())).input(),
      timestampValues: map['timestampValues'] == null ? null : (GoogleCloudContentwarehouseV1TimestampArray.fromMap((map['timestampValues']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

