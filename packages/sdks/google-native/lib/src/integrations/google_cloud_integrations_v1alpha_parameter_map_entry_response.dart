// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_parameter_map_field_response.dart';

/// Entry is a pair of key and value.
class GoogleCloudIntegrationsV1alphaParameterMapEntryResponse {
  /// Key of the map entry.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapFieldResponse> key;
  /// Value of the map entry.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapFieldResponse> value;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMapEntryResponse].
  /// [key] Key of the map entry.
  /// [value] Value of the map entry.
  GoogleCloudIntegrationsV1alphaParameterMapEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaParameterMapFieldResponse, Map<String, dynamic>>(key, (value) => value.toMap()),
      'value': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaParameterMapFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapEntryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapEntryResponse(
      key: (GoogleCloudIntegrationsV1alphaParameterMapFieldResponse.fromMap((map['key'] as Map).cast<String, dynamic>())).input(),
      value: (GoogleCloudIntegrationsV1alphaParameterMapFieldResponse.fromMap((map['value'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

