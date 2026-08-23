// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';

class GoogleCloudApigeeV1ReportPropertyResponse {
  /// name of the property
  final pulumi.Input<String> property;
  /// property values
  final pulumi.Input<List<GoogleCloudApigeeV1AttributeResponse>> value;

  /// Creates a new [GoogleCloudApigeeV1ReportPropertyResponse].
  /// [property] name of the property
  /// [value] property values
  const GoogleCloudApigeeV1ReportPropertyResponse({
    required this.property,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'property': property,
      'value': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1AttributeResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudApigeeV1ReportPropertyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ReportPropertyResponse(
      property: pulumi.Input.fromValue(map['property'] as String),
      value: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(map['value']!, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
