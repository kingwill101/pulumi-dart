// ignore_for_file: unused_element, unnecessary_cast

import 'user_properties_response.dart';

/// Result data returned by getUserSettings.
class GetUserSettingsResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The cloud shell user settings properties.
  final UserPropertiesResponse properties;

  /// Creates a new [GetUserSettingsResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [properties] The cloud shell user settings properties.
  GetUserSettingsResult({
    required this.azureApiVersion,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'properties': properties.toMap(),
    };
  }

  factory GetUserSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetUserSettingsResult(
      azureApiVersion: map['azureApiVersion'] as String,
      properties: UserPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
    );
  }
}

