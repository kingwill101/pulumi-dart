// ignore_for_file: unused_element, unnecessary_cast

import 'console_properties_response.dart';

/// Result data returned by getConsole.
class GetConsoleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Cloud shell console properties.
  final ConsolePropertiesResponse properties;

  /// Creates a new [GetConsoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [properties] Cloud shell console properties.
  const GetConsoleResult({
    required this.azureApiVersion,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'properties': properties.toMap(),
    };
  }

  factory GetConsoleResult.fromMap(Map<String, dynamic> map) {
    return GetConsoleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      properties: ConsolePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
    );
  }
}

