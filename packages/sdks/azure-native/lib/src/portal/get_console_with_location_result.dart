// ignore_for_file: unused_element, unnecessary_cast

import 'console_properties_response.dart';

/// Result data returned by getConsoleWithLocation.
class GetConsoleWithLocationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Cloud shell console properties.
  final ConsolePropertiesResponse properties;

  /// Creates a new [GetConsoleWithLocationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [properties] Cloud shell console properties.
  GetConsoleWithLocationResult({
    required this.azureApiVersion,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'properties': properties.toMap(),
    };
  }

  factory GetConsoleWithLocationResult.fromMap(Map<String, dynamic> map) {
    return GetConsoleWithLocationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      properties: ConsolePropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
