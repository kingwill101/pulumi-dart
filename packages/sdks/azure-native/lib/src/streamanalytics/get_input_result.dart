// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInput.
class GetInputResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  final dynamic properties;
  /// Resource type
  final String? type;

  /// Creates a new [GetInputResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  /// [type] Resource type
  const GetInputResult({
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
      'properties': ?properties,
      'type': ?type,
    };
  }

  factory GetInputResult.fromMap(Map<String, dynamic> map) {
    return GetInputResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
