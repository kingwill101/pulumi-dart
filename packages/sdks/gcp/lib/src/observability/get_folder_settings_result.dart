// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFolderSettings.
class GetFolderSettingsResult {
  final String? defaultStorageLocation;
  final String? folder;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyName;
  final String? location;
  final String? name;
  final String? serviceAccountId;

  /// Creates a new [GetFolderSettingsResult].
  /// [defaultStorageLocation] Optional.
  /// [folder] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [serviceAccountId] Optional.
  const GetFolderSettingsResult({
    this.defaultStorageLocation,
    this.folder,
    this.id,
    this.kmsKeyName,
    this.location,
    this.name,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'folder': ?folder,
      'id': ?id,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory GetFolderSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetFolderSettingsResult(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
