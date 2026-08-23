// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationSettings.
class GetOrganizationSettingsResult {
  final String defaultStorageLocation;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;
  final String location;
  final String name;
  final String organization;
  final String serviceAccountId;

  /// Creates a new [GetOrganizationSettingsResult].
  /// [defaultStorageLocation] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Required.
  /// [location] Required.
  /// [name] Required.
  /// [organization] Required.
  /// [serviceAccountId] Required.
  const GetOrganizationSettingsResult({
    required this.defaultStorageLocation,
    required this.id,
    required this.kmsKeyName,
    required this.location,
    required this.name,
    required this.organization,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': defaultStorageLocation,
      'id': id,
      'kmsKeyName': kmsKeyName,
      'location': location,
      'name': name,
      'organization': organization,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory GetOrganizationSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSettingsResult(
      defaultStorageLocation: map['defaultStorageLocation'] as String,
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      organization: map['organization'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
