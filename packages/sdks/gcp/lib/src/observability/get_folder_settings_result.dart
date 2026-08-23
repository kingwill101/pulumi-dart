// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFolderSettings.
class GetFolderSettingsResult {
  final String defaultStorageLocation;
  final String folder;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;
  final String location;
  final String name;
  final String serviceAccountId;

  /// Creates a new [GetFolderSettingsResult].
  /// [defaultStorageLocation] Required.
  /// [folder] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Required.
  /// [location] Required.
  /// [name] Required.
  /// [serviceAccountId] Required.
  const GetFolderSettingsResult({
    required this.defaultStorageLocation,
    required this.folder,
    required this.id,
    required this.kmsKeyName,
    required this.location,
    required this.name,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': defaultStorageLocation,
      'folder': folder,
      'id': id,
      'kmsKeyName': kmsKeyName,
      'location': location,
      'name': name,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory GetFolderSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetFolderSettingsResult(
      defaultStorageLocation: map['defaultStorageLocation'] as String,
      folder: map['folder'] as String,
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
    );
  }
}
