// ignore_for_file: unused_element, unnecessary_cast

import 'console_properties_response.dart';

/// Result data returned by getConsoleWithLocation.
class GetConsoleWithLocationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Cloud shell console properties.
  final ConsolePropertiesResponse? properties;

  /// Creates a new [GetConsoleWithLocationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [properties] Cloud shell console properties.
  const GetConsoleWithLocationResult({
    this.azureApiVersion,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'properties': ?properties?.toMap(),
    };
  }

  factory GetConsoleWithLocationResult.fromMap(Map<String, dynamic> map) {
    return GetConsoleWithLocationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ConsolePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
