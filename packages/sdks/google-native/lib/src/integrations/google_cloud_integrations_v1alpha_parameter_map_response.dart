// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_parameter_map_entry_response.dart';

/// A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.
class GoogleCloudIntegrationsV1alphaParameterMapResponse {
  /// A list of parameter map entries.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaParameterMapEntryResponse>> entries;
  /// Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
  final pulumi.Input<String> keyType;
  /// Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
  final pulumi.Input<String> valueType;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMapResponse].
  /// [entries] A list of parameter map entries.
  /// [keyType] Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
  /// [valueType] Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
  GoogleCloudIntegrationsV1alphaParameterMapResponse({
    required this.entries,
    required this.keyType,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.mapInputValue<List<GoogleCloudIntegrationsV1alphaParameterMapEntryResponse>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaParameterMapEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyType': keyType,
      'valueType': valueType,
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapResponse(
      entries: (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaParameterMapEntryResponse>(map['entries'], (value) => GoogleCloudIntegrationsV1alphaParameterMapEntryResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyType: (map['keyType'] as String).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}

