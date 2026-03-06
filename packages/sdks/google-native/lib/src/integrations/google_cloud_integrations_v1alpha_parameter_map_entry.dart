// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_parameter_map_field.dart';

/// Entry is a pair of key and value.
class GoogleCloudIntegrationsV1alphaParameterMapEntry {
  /// Key of the map entry.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapField>? key;
  /// Value of the map entry.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapField>? value;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMapEntry].
  /// [key] Key of the map entry.
  /// [value] Value of the map entry.
  const GoogleCloudIntegrationsV1alphaParameterMapEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMapField, Map<String, dynamic>>(key, (value) => value.toMap()),
      'value': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMapField, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapEntry.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapEntry(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

