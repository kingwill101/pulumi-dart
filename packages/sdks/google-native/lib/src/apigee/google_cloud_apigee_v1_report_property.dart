// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

class GoogleCloudApigeeV1ReportProperty {
  /// name of the property
  final pulumi.Input<String>? property;

  /// property values
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? value;

  /// Creates a new [GoogleCloudApigeeV1ReportProperty].
  /// [property] name of the property
  /// [value] property values
  GoogleCloudApigeeV1ReportProperty({this.property, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'property': ?property,
      'value':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudApigeeV1Attribute>,
            List<Map<String, dynamic>>
          >(
            value,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1Attribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudApigeeV1ReportProperty.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ReportProperty(
      property: (() {
        final guardedValue = map['property'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(
            guardedValue,
            (value) => GoogleCloudApigeeV1Attribute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
