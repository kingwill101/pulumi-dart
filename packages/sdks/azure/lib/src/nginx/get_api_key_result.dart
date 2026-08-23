// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiKey.
class GetApiKeyResult {
  /// The RFC3339 formatted time after which this Dataplane API Key is no longer valid.
  final String endDateTime;
  /// The first three characters of the secret text to help identify it in use.
  final String hint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String nginxDeploymentId;

  /// Creates a new [GetApiKeyResult].
  /// [endDateTime] The RFC3339 formatted time after which this Dataplane API Key is no longer valid.
  /// [hint] The first three characters of the secret text to help identify it in use.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [nginxDeploymentId] Required.
  const GetApiKeyResult({
    required this.endDateTime,
    required this.hint,
    required this.id,
    required this.name,
    required this.nginxDeploymentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDateTime': endDateTime,
      'hint': hint,
      'id': id,
      'name': name,
      'nginxDeploymentId': nginxDeploymentId,
    };
  }

  factory GetApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetApiKeyResult(
      endDateTime: map['endDateTime'] as String,
      hint: map['hint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nginxDeploymentId: map['nginxDeploymentId'] as String,
    );
  }
}
