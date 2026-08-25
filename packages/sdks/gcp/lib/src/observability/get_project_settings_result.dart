// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectSettings.
class GetProjectSettingsResult {
  final String? defaultStorageLocation;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyName;
  final String? location;
  final String? name;
  final String? project;
  final String? serviceAccountId;

  /// Creates a new [GetProjectSettingsResult].
  /// [defaultStorageLocation] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [serviceAccountId] Optional.
  const GetProjectSettingsResult({
    this.defaultStorageLocation,
    this.id,
    this.kmsKeyName,
    this.location,
    this.name,
    this.project,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'id': ?id,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory GetProjectSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectSettingsResult(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
