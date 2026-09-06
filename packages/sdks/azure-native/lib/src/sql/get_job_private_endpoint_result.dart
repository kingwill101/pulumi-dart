// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getJobPrivateEndpoint.
class GetJobPrivateEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Private endpoint id of the private endpoint.
  final String? privateEndpointId;
  /// ARM resource id of the server the private endpoint will target.
  final String? targetServerAzureResourceId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetJobPrivateEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [privateEndpointId] Private endpoint id of the private endpoint.
  /// [targetServerAzureResourceId] ARM resource id of the server the private endpoint will target.
  /// [type] Resource type.
  const GetJobPrivateEndpointResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.privateEndpointId,
    this.targetServerAzureResourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'privateEndpointId': ?privateEndpointId,
      'targetServerAzureResourceId': ?targetServerAzureResourceId,
      'type': ?type,
    };
  }

  factory GetJobPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetJobPrivateEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointId: (() { final guardedValue = map['privateEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetServerAzureResourceId: (() { final guardedValue = map['targetServerAzureResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
