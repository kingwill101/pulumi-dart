// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAndroidApp.
class GetAndroidAppResult {
  final String? apiKeyId;
  /// Immutable. The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final String? appId;
  final String? deletionPolicy;
  /// The user-assigned display name of the AndroidApp.
  final String? displayName;
  /// This checksum is computed by the server based on the value of other fields, and it may be sent
  /// with update requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The fully qualified resource name of the AndroidApp, for example:
  /// projects/projectId/androidApps/appId
  final String? name;
  /// The canonical package name of the Android app as would appear in the Google Play Developer Console.
  final String? packageName;
  final String? project;
  /// The SHA1 certificate hashes for the AndroidApp.
  final List<String>? sha1Hashes;
  /// The SHA256 certificate hashes for the AndroidApp.
  final List<String>? sha256Hashes;

  /// Creates a new [GetAndroidAppResult].
  /// [apiKeyId] Optional.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the AndroidApp.
  /// [etag] This checksum is computed by the server based on the value of other fields, and it may be sent
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The fully qualified resource name of the AndroidApp, for example:
  /// [packageName] The canonical package name of the Android app as would appear in the Google Play Developer Console.
  /// [project] Optional.
  /// [sha1Hashes] The SHA1 certificate hashes for the AndroidApp.
  /// [sha256Hashes] The SHA256 certificate hashes for the AndroidApp.
  const GetAndroidAppResult({
    this.apiKeyId,
    this.appId,
    this.deletionPolicy,
    this.displayName,
    this.etag,
    this.id,
    this.name,
    this.packageName,
    this.project,
    this.sha1Hashes,
    this.sha256Hashes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appId': ?appId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'packageName': ?packageName,
      'project': ?project,
      'sha1Hashes': ?sha1Hashes,
      'sha256Hashes': ?sha256Hashes,
    };
  }

  factory GetAndroidAppResult.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppResult(
      apiKeyId: (() { final guardedValue = map['apiKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sha1Hashes: (() { final guardedValue = map['sha1Hashes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sha256Hashes: (() { final guardedValue = map['sha256Hashes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
