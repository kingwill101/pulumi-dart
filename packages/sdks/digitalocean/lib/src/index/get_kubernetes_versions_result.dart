// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubernetesVersions.
class GetKubernetesVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The most recent version available.
  final String? latestVersion;
  /// A list of available versions.
  final List<String>? validVersions;
  final String? versionPrefix;

  /// Creates a new [GetKubernetesVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latestVersion] The most recent version available.
  /// [validVersions] A list of available versions.
  /// [versionPrefix] Optional.
  const GetKubernetesVersionsResult({
    this.id,
    this.latestVersion,
    this.validVersions,
    this.versionPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'latestVersion': ?latestVersion,
      'validVersions': ?validVersions,
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetKubernetesVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestVersion: (() { final guardedValue = map['latestVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validVersions: (() { final guardedValue = map['validVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      versionPrefix: (() { final guardedValue = map['versionPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
