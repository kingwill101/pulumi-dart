// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebApp.
class GetWebAppResult {
  final String? apiKeyId;
  /// Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final String? appId;
  final List<String>? appUrls;
  final String? deletionPolicy;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/webApps/appId
  final String? name;
  final String? project;

  /// Creates a new [GetWebAppResult].
  /// [apiKeyId] Optional.
  /// [appId] Immutable. The globally unique, Firebase-assigned identifier of the App.
  /// [appUrls] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The fully qualified resource name of the App, for example:
  /// [project] Optional.
  const GetWebAppResult({
    this.apiKeyId,
    this.appId,
    this.appUrls,
    this.deletionPolicy,
    this.displayName,
    this.id,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appId': ?appId,
      'appUrls': ?appUrls,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GetWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppResult(
      apiKeyId: (() { final guardedValue = map['apiKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appUrls: (() { final guardedValue = map['appUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
