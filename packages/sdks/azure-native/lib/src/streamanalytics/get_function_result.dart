// ignore_for_file: unused_element, unnecessary_cast

import 'aggregate_function_properties_response.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource name
  final String? name;
  /// The properties that are associated with a function.
  final AggregateFunctionPropertiesResponse properties;
  /// Resource type
  final String type;

  /// Creates a new [GetFunctionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] The properties that are associated with a function.
  /// [type] Resource type
  GetFunctionResult({
    required this.azureApiVersion,
    required this.id,
    this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': ?name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: AggregateFunctionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

