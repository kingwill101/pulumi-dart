// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAndroidApp.
class GetAndroidAppResult {
  final String apiKeyId;

  /// Immutable. The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final String appId;
  final String deletionPolicy;

  /// The user-assigned display name of the AndroidApp.
  final String displayName;

  /// This checksum is computed by the server based on the value of other fields, and it may be sent
  /// with update requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The fully qualified resource name of the AndroidApp, for example:
  /// projects/projectId/androidApps/appId
  final String name;

  /// The canonical package name of the Android app as would appear in the Google Play Developer Console.
  final String packageName;
  final String? project;

  /// The SHA1 certificate hashes for the AndroidApp.
  final List<String> sha1Hashes;

  /// The SHA256 certificate hashes for the AndroidApp.
  final List<String> sha256Hashes;

  /// Creates a new [GetAndroidAppResult].
  /// [apiKeyId] Required.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// [deletionPolicy] Required.
  /// [displayName] The user-assigned display name of the AndroidApp.
  /// [etag] This checksum is computed by the server based on the value of other fields, and it may be sent
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The fully qualified resource name of the AndroidApp, for example:
  /// [packageName] The canonical package name of the Android app as would appear in the Google Play Developer Console.
  /// [project] Optional.
  /// [sha1Hashes] The SHA1 certificate hashes for the AndroidApp.
  /// [sha256Hashes] The SHA256 certificate hashes for the AndroidApp.
  GetAndroidAppResult({
    required this.apiKeyId,
    required this.appId,
    required this.deletionPolicy,
    required this.displayName,
    required this.etag,
    required this.id,
    required this.name,
    required this.packageName,
    this.project,
    required this.sha1Hashes,
    required this.sha256Hashes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': apiKeyId,
      'appId': appId,
      'deletionPolicy': deletionPolicy,
      'displayName': displayName,
      'etag': etag,
      'id': id,
      'name': name,
      'packageName': packageName,
      'project': ?project,
      'sha1Hashes': sha1Hashes,
      'sha256Hashes': sha256Hashes,
    };
  }

  factory GetAndroidAppResult.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppResult(
      apiKeyId: map['apiKeyId'] as String,
      appId: map['appId'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sha1Hashes: (map['sha1Hashes'] as List).cast<String>(),
      sha256Hashes: (map['sha256Hashes'] as List).cast<String>(),
    );
  }
}
