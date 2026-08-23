// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedInstanceKey.
class GetManagedInstanceKeyResult {
  /// Key auto rotation opt-in flag. Either true or false.
  final bool autoRotationEnabled;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The key creation date.
  final String creationDate;
  /// Resource ID.
  final String id;
  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  final String kind;
  /// Resource name.
  final String name;
  /// Thumbprint of the key.
  final String thumbprint;
  /// Resource type.
  final String type;

  /// Creates a new [GetManagedInstanceKeyResult].
  /// [autoRotationEnabled] Key auto rotation opt-in flag. Either true or false.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The key creation date.
  /// [id] Resource ID.
  /// [kind] Kind of encryption protector. This is metadata used for the Azure portal experience.
  /// [name] Resource name.
  /// [thumbprint] Thumbprint of the key.
  /// [type] Resource type.
  const GetManagedInstanceKeyResult({
    required this.autoRotationEnabled,
    required this.azureApiVersion,
    required this.creationDate,
    required this.id,
    required this.kind,
    required this.name,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': autoRotationEnabled,
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'id': id,
      'kind': kind,
      'name': name,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetManagedInstanceKeyResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceKeyResult(
      autoRotationEnabled: map['autoRotationEnabled'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}
