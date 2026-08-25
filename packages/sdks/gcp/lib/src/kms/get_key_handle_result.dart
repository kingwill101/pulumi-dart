// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeyHandle.
class GetKeyHandleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  final String? kmsKey;
  /// The location of the KMS Key and KeyHandle.
  final String? location;
  final String? name;
  /// The identifier of the project where KMS KeyHandle is created.
  final String? project;
  /// Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  final String? resourceTypeSelector;

  /// Creates a new [GetKeyHandleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] The identifier of the KMS Key created for the KeyHandle. Its format is `projects/{projectId}/locations/{location}/keyRings/{keyRingName}/cryptoKeys/{cryptoKeyName}`.
  /// [location] The location of the KMS Key and KeyHandle.
  /// [name] Optional.
  /// [project] The identifier of the project where KMS KeyHandle is created.
  /// [resourceTypeSelector] Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  const GetKeyHandleResult({
    this.id,
    this.kmsKey,
    this.location,
    this.name,
    this.project,
    this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kmsKey': ?kmsKey,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resourceTypeSelector': ?resourceTypeSelector,
    };
  }

  factory GetKeyHandleResult.fromMap(Map<String, dynamic> map) {
    return GetKeyHandleResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceTypeSelector: (() { final guardedValue = map['resourceTypeSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
