// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// The OAuth2 access token used by the client to authenticate against the Google Cloud API.
  final String? accessToken;
  /// The default labels configured on the provider.
  final Map<String, String>? defaultLabels;
  final String? id;
  /// The ID of the project to apply any resources to.
  final String? project;
  /// The region to operate under.
  final String? region;
  /// The zone to operate under.
  final String? zone;

  /// Creates a new [GetClientConfigResult].
  /// [accessToken] The OAuth2 access token used by the client to authenticate against the Google Cloud API.
  /// [defaultLabels] The default labels configured on the provider.
  /// [id] Optional.
  /// [project] The ID of the project to apply any resources to.
  /// [region] The region to operate under.
  /// [zone] The zone to operate under.
  const GetClientConfigResult({
    this.accessToken,
    this.defaultLabels,
    this.id,
    this.project,
    this.region,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'defaultLabels': ?defaultLabels,
      'id': ?id,
      'project': ?project,
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultLabels: (() { final guardedValue = map['defaultLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
