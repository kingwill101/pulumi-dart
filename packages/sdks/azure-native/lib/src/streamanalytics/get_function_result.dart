// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFunction.
class GetFunctionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// The properties that are associated with a function.
  final dynamic properties;
  /// Resource type
  final String? type;

  /// Creates a new [GetFunctionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [properties] The properties that are associated with a function.
  /// [type] Resource type
  const GetFunctionResult({
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

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
