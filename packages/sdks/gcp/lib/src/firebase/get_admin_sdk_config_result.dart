// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAdminSdkConfig.
class GetAdminSdkConfigResult {
  /// The default Firebase Realtime Database URL.
  final String databaseUrl;
  final String id;
  /// The ID of the project's default GCP resource location.
  final String locationId;
  /// The ID of the project in which the resource belongs.
  final String project;
  /// The default Cloud Storage for Firebase storage bucket name.
  final String storageBucket;

  /// Creates a new [GetAdminSdkConfigResult].
  /// [databaseUrl] The default Firebase Realtime Database URL.
  /// [id] Required.
  /// [locationId] The ID of the project's default GCP resource location.
  /// [project] The ID of the project in which the resource belongs.
  /// [storageBucket] The default Cloud Storage for Firebase storage bucket name.
  const GetAdminSdkConfigResult({
    required this.databaseUrl,
    required this.id,
    required this.locationId,
    required this.project,
    required this.storageBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseUrl': databaseUrl,
      'id': id,
      'locationId': locationId,
      'project': project,
      'storageBucket': storageBucket,
    };
  }

  factory GetAdminSdkConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAdminSdkConfigResult(
      databaseUrl: map['databaseUrl'] as String,
      id: map['id'] as String,
      locationId: map['locationId'] as String,
      project: map['project'] as String,
      storageBucket: map['storageBucket'] as String,
    );
  }
}
