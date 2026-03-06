// ignore_for_file: unused_element, unnecessary_cast

import 'reference_input_properties_response.dart';

/// Result data returned by getInput.
class GetInputResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource name
  final String? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final ReferenceInputPropertiesResponse properties;
  /// Resource type
  final String type;

  /// Creates a new [GetInputResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  /// [type] Resource type
  const GetInputResult({
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

  factory GetInputResult.fromMap(Map<String, dynamic> map) {
    return GetInputResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: ReferenceInputPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

