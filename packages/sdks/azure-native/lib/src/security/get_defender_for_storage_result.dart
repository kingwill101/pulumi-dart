// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_storage_setting_properties_response.dart';

/// Result data returned by getDefenderForStorage.
class GetDefenderForStorageResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// Defender for Storage resource properties.
  final DefenderForStorageSettingPropertiesResponse? properties;
  /// Resource type
  final String? type;

  /// Creates a new [GetDefenderForStorageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] Defender for Storage resource properties.
  /// [type] Resource type
  const GetDefenderForStorageResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetDefenderForStorageResult.fromMap(Map<String, dynamic> map) {
    return GetDefenderForStorageResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return DefenderForStorageSettingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
