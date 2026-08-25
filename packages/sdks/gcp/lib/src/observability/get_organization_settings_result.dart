// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationSettings.
class GetOrganizationSettingsResult {
  final String? defaultStorageLocation;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyName;
  final String? location;
  final String? name;
  final String? organization;
  final String? serviceAccountId;

  /// Creates a new [GetOrganizationSettingsResult].
  /// [defaultStorageLocation] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [organization] Optional.
  /// [serviceAccountId] Optional.
  const GetOrganizationSettingsResult({
    this.defaultStorageLocation,
    this.id,
    this.kmsKeyName,
    this.location,
    this.name,
    this.organization,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'id': ?id,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory GetOrganizationSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSettingsResult(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
