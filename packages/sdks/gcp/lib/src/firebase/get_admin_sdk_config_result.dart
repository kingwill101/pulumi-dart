// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAdminSdkConfig.
class GetAdminSdkConfigResult {
  /// The default Firebase Realtime Database URL.
  final String? databaseUrl;
  final String? id;
  /// The ID of the project's default GCP resource location.
  final String? locationId;
  /// The ID of the project in which the resource belongs.
  final String? project;
  /// The default Cloud Storage for Firebase storage bucket name.
  final String? storageBucket;

  /// Creates a new [GetAdminSdkConfigResult].
  /// [databaseUrl] The default Firebase Realtime Database URL.
  /// [id] Optional.
  /// [locationId] The ID of the project's default GCP resource location.
  /// [project] The ID of the project in which the resource belongs.
  /// [storageBucket] The default Cloud Storage for Firebase storage bucket name.
  const GetAdminSdkConfigResult({
    this.databaseUrl,
    this.id,
    this.locationId,
    this.project,
    this.storageBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseUrl': ?databaseUrl,
      'id': ?id,
      'locationId': ?locationId,
      'project': ?project,
      'storageBucket': ?storageBucket,
    };
  }

  factory GetAdminSdkConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAdminSdkConfigResult(
      databaseUrl: (() { final guardedValue = map['databaseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationId: (() { final guardedValue = map['locationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageBucket: (() { final guardedValue = map['storageBucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
