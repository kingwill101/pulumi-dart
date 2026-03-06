// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppleApp.
class GetAppleAppResult {
  final String apiKeyId;
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final String appId;
  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  final String appStoreId;
  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  final String bundleId;
  final String deletionPolicy;
  /// The user-assigned display name of the App.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/iosApps/appId
  final String name;
  final String? project;
  /// The Apple Developer Team ID associated with the App in the App Store.
  final String teamId;

  /// Creates a new [GetAppleAppResult].
  /// [apiKeyId] Required.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// [appStoreId] The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  /// [bundleId] The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  /// [deletionPolicy] Required.
  /// [displayName] The user-assigned display name of the App.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The fully qualified resource name of the App, for example:
  /// [project] Optional.
  /// [teamId] The Apple Developer Team ID associated with the App in the App Store.
  const GetAppleAppResult({
    required this.apiKeyId,
    required this.appId,
    required this.appStoreId,
    required this.bundleId,
    required this.deletionPolicy,
    required this.displayName,
    required this.id,
    required this.name,
    this.project,
    required this.teamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': apiKeyId,
      'appId': appId,
      'appStoreId': appStoreId,
      'bundleId': bundleId,
      'deletionPolicy': deletionPolicy,
      'displayName': displayName,
      'id': id,
      'name': name,
      'project': ?project,
      'teamId': teamId,
    };
  }

  factory GetAppleAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppleAppResult(
      apiKeyId: map['apiKeyId'] as String,
      appId: map['appId'] as String,
      appStoreId: map['appStoreId'] as String,
      bundleId: map['bundleId'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      teamId: map['teamId'] as String,
    );
  }
}

