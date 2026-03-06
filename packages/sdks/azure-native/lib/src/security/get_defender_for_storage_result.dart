// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_storage_setting_properties_response.dart';

/// Result data returned by getDefenderForStorage.
class GetDefenderForStorageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// Defender for Storage resource properties.
  final DefenderForStorageSettingPropertiesResponse properties;
  /// Resource type
  final String type;

  /// Creates a new [GetDefenderForStorageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] Defender for Storage resource properties.
  /// [type] Resource type
  const GetDefenderForStorageResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetDefenderForStorageResult.fromMap(Map<String, dynamic> map) {
    return GetDefenderForStorageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: DefenderForStorageSettingPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

