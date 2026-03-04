// ignore_for_file: unused_element, unnecessary_cast

import 'user_properties_response.dart';

/// Result data returned by getUserSettingsWithLocation.
class GetUserSettingsWithLocationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The cloud shell user settings properties.
  final UserPropertiesResponse properties;

  /// Creates a new [GetUserSettingsWithLocationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [properties] The cloud shell user settings properties.
  GetUserSettingsWithLocationResult({
    required this.azureApiVersion,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'properties': properties.toMap(),
    };
  }

  factory GetUserSettingsWithLocationResult.fromMap(Map<String, dynamic> map) {
    return GetUserSettingsWithLocationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      properties: UserPropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
