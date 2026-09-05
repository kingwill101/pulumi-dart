// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubernetesServiceVersions.
class GetKubernetesServiceVersionsResult {
  /// The N-1 minor non-preview version and latest patch.
  final String? defaultVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includePreview;
  /// The most recent version available. If `includePreview == false`, this is the most recent non-preview version available.
  final String? latestVersion;
  final String? location;
  final String? versionPrefix;
  /// The list of all supported versions.
  final List<String>? versions;

  /// Creates a new [GetKubernetesServiceVersionsResult].
  /// [defaultVersion] The N-1 minor non-preview version and latest patch.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includePreview] Optional.
  /// [latestVersion] The most recent version available. If `includePreview == false`, this is the most recent non-preview version available.
  /// [location] Optional.
  /// [versionPrefix] Optional.
  /// [versions] The list of all supported versions.
  const GetKubernetesServiceVersionsResult({
    this.defaultVersion,
    this.id,
    this.includePreview,
    this.latestVersion,
    this.location,
    this.versionPrefix,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion': ?defaultVersion,
      'id': ?id,
      'includePreview': ?includePreview,
      'latestVersion': ?latestVersion,
      'location': ?location,
      'versionPrefix': ?versionPrefix,
      'versions': ?versions,
    };
  }

  factory GetKubernetesServiceVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesServiceVersionsResult(
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includePreview: (() { final guardedValue = map['includePreview']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      latestVersion: (() { final guardedValue = map['latestVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionPrefix: (() { final guardedValue = map['versionPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
