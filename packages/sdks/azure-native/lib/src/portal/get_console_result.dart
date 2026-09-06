// ignore_for_file: unused_element, unnecessary_cast

import 'console_properties_response.dart';

/// Result data returned by getConsole.
class GetConsoleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Cloud shell console properties.
  final ConsolePropertiesResponse? properties;

  /// Creates a new [GetConsoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [properties] Cloud shell console properties.
  const GetConsoleResult({
    this.azureApiVersion,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'properties': ?properties?.toMap(),
    };
  }

  factory GetConsoleResult.fromMap(Map<String, dynamic> map) {
    return GetConsoleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ConsolePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
