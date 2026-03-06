// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubernetesServiceVersions.
class GetKubernetesServiceVersionsResult {
  /// The N-1 minor non-preview version and latest patch.
  final String defaultVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includePreview;
  /// The most recent version available. If `include_preview == false`, this is the most recent non-preview version available.
  final String latestVersion;
  final String location;
  final String? versionPrefix;
  /// The list of all supported versions.
  final List<String> versions;

  /// Creates a new [GetKubernetesServiceVersionsResult].
  /// [defaultVersion] The N-1 minor non-preview version and latest patch.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includePreview] Optional.
  /// [latestVersion] The most recent version available. If `include_preview == false`, this is the most recent non-preview version available.
  /// [location] Required.
  /// [versionPrefix] Optional.
  /// [versions] The list of all supported versions.
  const GetKubernetesServiceVersionsResult({
    required this.defaultVersion,
    required this.id,
    this.includePreview,
    required this.latestVersion,
    required this.location,
    this.versionPrefix,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion': defaultVersion,
      'id': id,
      'includePreview': ?includePreview,
      'latestVersion': latestVersion,
      'location': location,
      'versionPrefix': ?versionPrefix,
      'versions': versions,
    };
  }

  factory GetKubernetesServiceVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesServiceVersionsResult(
      defaultVersion: map['defaultVersion'] as String,
      id: map['id'] as String,
      includePreview: (() { final guardedValue = map['includePreview']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      latestVersion: map['latestVersion'] as String,
      location: map['location'] as String,
      versionPrefix: (() { final guardedValue = map['versionPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (map['versions'] as List).cast<String>(),
    );
  }
}

