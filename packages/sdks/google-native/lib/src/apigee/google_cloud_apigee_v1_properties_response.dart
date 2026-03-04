// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_property_response.dart';

/// Message for compatibility with legacy Edge specification for Java Properties object in JSON.
class GoogleCloudApigeeV1PropertiesResponse {
  /// List of all properties in the object
  final pulumi.Input<List<GoogleCloudApigeeV1PropertyResponse>> property;

  /// Creates a new [GoogleCloudApigeeV1PropertiesResponse].
  /// [property] List of all properties in the object
  GoogleCloudApigeeV1PropertiesResponse({required this.property});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'property':
          pulumi.Input.mapInputValue<
            List<GoogleCloudApigeeV1PropertyResponse>,
            List<Map<String, dynamic>>
          >(
            property,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1PropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudApigeeV1PropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1PropertiesResponse(
      property: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudApigeeV1PropertyResponse>(
          map['property']!,
          (value) => GoogleCloudApigeeV1PropertyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
