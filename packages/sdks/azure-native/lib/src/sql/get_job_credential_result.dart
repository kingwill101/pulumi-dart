// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getJobCredential.
class GetJobCredentialResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Resource type.
  final String type;

  /// The credential user name.
  final String username;

  /// Creates a new [GetJobCredentialResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [type] Resource type.
  /// [username] The credential user name.
  GetJobCredentialResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.type,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'type': type,
      'username': username,
    };
  }

  factory GetJobCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetJobCredentialResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      username: map['username'] as String,
    );
  }
}
