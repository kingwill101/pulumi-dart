// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_response.dart';

/// Property values.
class GoogleCloudContentwarehouseV1PropertyArrayResponse {
  /// List of property values.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1PropertyResponse>>
  properties;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyArrayResponse].
  /// [properties] List of property values.
  GoogleCloudContentwarehouseV1PropertyArrayResponse({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties':
          pulumi.Input.mapInputValue<
            List<GoogleCloudContentwarehouseV1PropertyResponse>,
            List<Map<String, dynamic>>
          >(
            properties,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudContentwarehouseV1PropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1PropertyArrayResponse(
      properties: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyResponse>(
          map['properties']!,
          (value) => GoogleCloudContentwarehouseV1PropertyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
