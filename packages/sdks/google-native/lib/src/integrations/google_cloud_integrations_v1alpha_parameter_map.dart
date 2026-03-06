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
  const GoogleCloudIntegrationsV1alphaParameterMap({
    this.entries,
    this.keyType,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaParameterMapEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaParameterMapEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMapKeyType, String>(keyType, (value) => value.wireValue),
      'valueType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMapValueType, String>(valueType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMap.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMap(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaParameterMapEntry>(guardedValue, (value) => GoogleCloudIntegrationsV1alphaParameterMapEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapKeyType.fromValue(guardedValue as String)); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapValueType.fromValue(guardedValue as String)); })(),
    );
  }
}

