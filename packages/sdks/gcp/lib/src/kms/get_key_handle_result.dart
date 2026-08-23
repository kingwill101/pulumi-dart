// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeyHandle.
class GetKeyHandleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  final String kmsKey;
  /// The location of the KMS Key and KeyHandle.
  final String location;
  final String name;
  /// The identifier of the project where KMS KeyHandle is created.
  final String? project;
  /// Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  final String resourceTypeSelector;

  /// Creates a new [GetKeyHandleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  /// [location] The location of the KMS Key and KeyHandle.
  /// [name] Required.
  /// [project] The identifier of the project where KMS KeyHandle is created.
  /// [resourceTypeSelector] Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  const GetKeyHandleResult({
    required this.id,
    required this.kmsKey,
    required this.location,
    required this.name,
    this.project,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kmsKey': kmsKey,
      'location': location,
      'name': name,
      'project': ?project,
      'resourceTypeSelector': resourceTypeSelector,
    };
  }

  factory GetKeyHandleResult.fromMap(Map<String, dynamic> map) {
    return GetKeyHandleResult(
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceTypeSelector: map['resourceTypeSelector'] as String,
    );
  }
}
