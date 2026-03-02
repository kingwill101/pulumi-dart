// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebApp.
class GetWebAppResult {
  final String apiKeyId;
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final String appId;
  final List<String> appUrls;
  final String deletionPolicy;
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/webApps/appId
  final String name;
  final String? project;

  /// Creates a new [GetWebAppResult].
  /// [apiKeyId] Required.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// [appUrls] Required.
  /// [deletionPolicy] Required.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The fully qualified resource name of the App, for example:
  /// [project] Optional.
  GetWebAppResult({
    required this.apiKeyId,
    required this.appId,
    required this.appUrls,
    required this.deletionPolicy,
    required this.displayName,
    required this.id,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': apiKeyId,
      'appId': appId,
      'appUrls': appUrls,
      'deletionPolicy': deletionPolicy,
      'displayName': displayName,
      'id': id,
      'name': name,
      'project': ?project,
    };
  }

  factory GetWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppResult(
      apiKeyId: map['apiKeyId'] as String,
      appId: map['appId'] as String,
      appUrls: (map['appUrls'] as List).cast<String>(),
      deletionPolicy: map['deletionPolicy'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project']! as String,
    );
  }
}

