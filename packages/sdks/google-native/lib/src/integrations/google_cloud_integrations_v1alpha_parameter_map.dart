// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_parameter_map_entry.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_key_type.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_value_type.dart';

/// A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.
class GoogleCloudIntegrationsV1alphaParameterMap {
  /// A list of parameter map entries.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaParameterMapEntry>>? entries;
  /// Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapKeyType>? keyType;
  /// Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapValueType>? valueType;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMap].
  /// [entries] A list of parameter map entries.
  /// [keyType] Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
  /// [valueType] Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
  GoogleCloudIntegrationsV1alphaParameterMap({
    this.entries,
    this.keyType,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaParameterMapEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaParameterMapEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMapKeyType, String>(keyType, (value) => value.value),
      'valueType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMapValueType, String>(valueType, (value) => value.value),
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMap.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMap(
      entries: map['entries'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaParameterMapEntry>(map['entries'], (value) => GoogleCloudIntegrationsV1alphaParameterMapEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyType: map['keyType'] == null ? null : (GoogleCloudIntegrationsV1alphaParameterMapKeyType.fromValue(map['keyType'] as String)).input(),
      valueType: map['valueType'] == null ? null : (GoogleCloudIntegrationsV1alphaParameterMapValueType.fromValue(map['valueType'] as String)).input(),
    );
  }
}

