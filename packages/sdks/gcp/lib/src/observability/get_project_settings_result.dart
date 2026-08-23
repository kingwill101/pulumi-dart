// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectSettings.
class GetProjectSettingsResult {
  final String defaultStorageLocation;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;
  final String location;
  final String name;
  final String project;
  final String serviceAccountId;

  /// Creates a new [GetProjectSettingsResult].
  /// [defaultStorageLocation] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Required.
  /// [serviceAccountId] Required.
  const GetProjectSettingsResult({
    required this.defaultStorageLocation,
    required this.id,
    required this.kmsKeyName,
    required this.location,
    required this.name,
    required this.project,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': defaultStorageLocation,
      'id': id,
      'kmsKeyName': kmsKeyName,
      'location': location,
      'name': name,
      'project': project,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory GetProjectSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectSettingsResult(
      defaultStorageLocation: map['defaultStorageLocation'] as String,
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
