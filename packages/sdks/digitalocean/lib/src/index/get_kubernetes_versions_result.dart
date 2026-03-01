// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubernetesVersions.
class GetKubernetesVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The most recent version available.
  final String latestVersion;
  /// A list of available versions.
  final List<String> validVersions;
  final String? versionPrefix;

  /// Creates a new [GetKubernetesVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latestVersion] The most recent version available.
  /// [validVersions] A list of available versions.
  /// [versionPrefix] Optional.
  GetKubernetesVersionsResult({
    required this.id,
    required this.latestVersion,
    required this.validVersions,
    this.versionPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'latestVersion': latestVersion,
      'validVersions': validVersions,
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetKubernetesVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionsResult(
      id: map['id'] as String,
      latestVersion: map['latestVersion'] as String,
      validVersions: (map['validVersions'] as List).cast<String>(),
      versionPrefix: map['versionPrefix'] == null ? null : map['versionPrefix'] as String,
    );
  }
}

