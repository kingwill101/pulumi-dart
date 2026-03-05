// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTransparentDataEncryption.
class GetTransparentDataEncryptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Specifies the state of the transparent data encryption.
  final String state;

  /// Resource type.
  final String type;

  /// Creates a new [GetTransparentDataEncryptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [state] Specifies the state of the transparent data encryption.
  /// [type] Resource type.
  GetTransparentDataEncryptionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'state': state,
      'type': type,
    };
  }

  factory GetTransparentDataEncryptionResult.fromMap(Map<String, dynamic> map) {
    return GetTransparentDataEncryptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
