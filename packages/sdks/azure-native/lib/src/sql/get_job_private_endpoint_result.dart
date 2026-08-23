// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getJobPrivateEndpoint.
class GetJobPrivateEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Private endpoint id of the private endpoint.
  final String privateEndpointId;
  /// ARM resource id of the server the private endpoint will target.
  final String targetServerAzureResourceId;
  /// Resource type.
  final String type;

  /// Creates a new [GetJobPrivateEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [privateEndpointId] Private endpoint id of the private endpoint.
  /// [targetServerAzureResourceId] ARM resource id of the server the private endpoint will target.
  /// [type] Resource type.
  const GetJobPrivateEndpointResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.privateEndpointId,
    required this.targetServerAzureResourceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'privateEndpointId': privateEndpointId,
      'targetServerAzureResourceId': targetServerAzureResourceId,
      'type': type,
    };
  }

  factory GetJobPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetJobPrivateEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpointId: map['privateEndpointId'] as String,
      targetServerAzureResourceId: map['targetServerAzureResourceId'] as String,
      type: map['type'] as String,
    );
  }
}
