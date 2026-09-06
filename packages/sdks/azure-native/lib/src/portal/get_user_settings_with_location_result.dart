// ignore_for_file: unused_element, unnecessary_cast

import 'user_properties_response.dart';

/// Result data returned by getUserSettingsWithLocation.
class GetUserSettingsWithLocationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The cloud shell user settings properties.
  final UserPropertiesResponse? properties;

  /// Creates a new [GetUserSettingsWithLocationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [properties] The cloud shell user settings properties.
  const GetUserSettingsWithLocationResult({
    this.azureApiVersion,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'properties': ?properties?.toMap(),
    };
  }

  factory GetUserSettingsWithLocationResult.fromMap(Map<String, dynamic> map) {
    return GetUserSettingsWithLocationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return UserPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
