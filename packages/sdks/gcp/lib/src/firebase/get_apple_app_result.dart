// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppleApp.
class GetAppleAppResult {
  final String? apiKeyId;
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final String? appId;
  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  final String? appStoreId;
  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  final String? bundleId;
  final String? deletionPolicy;
  /// The user-assigned display name of the App.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/iosApps/appId
  final String? name;
  final String? project;
  /// The Apple Developer Team ID associated with the App in the App Store.
  final String? teamId;

  /// Creates a new [GetAppleAppResult].
  /// [apiKeyId] Optional.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// [appStoreId] The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  /// [bundleId] The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the App.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The fully qualified resource name of the App, for example:
  /// [project] Optional.
  /// [teamId] The Apple Developer Team ID associated with the App in the App Store.
  const GetAppleAppResult({
    this.apiKeyId,
    this.appId,
    this.appStoreId,
    this.bundleId,
    this.deletionPolicy,
    this.displayName,
    this.id,
    this.name,
    this.project,
    this.teamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appId': ?appId,
      'appStoreId': ?appStoreId,
      'bundleId': ?bundleId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'teamId': ?teamId,
    };
  }

  factory GetAppleAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppleAppResult(
      apiKeyId: (() { final guardedValue = map['apiKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appStoreId: (() { final guardedValue = map['appStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      teamId: (() { final guardedValue = map['teamId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
