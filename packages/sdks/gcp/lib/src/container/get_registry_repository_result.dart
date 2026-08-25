// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryRepository.
class GetRegistryRepositoryResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  final String? region;
  /// The URL at which the repository can be accessed.
  final String? repositoryUrl;

  /// Creates a new [GetRegistryRepositoryResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [region] Optional.
  /// [repositoryUrl] The URL at which the repository can be accessed.
  const GetRegistryRepositoryResult({
    this.id,
    this.project,
    this.region,
    this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'project': ?project,
      'region': ?region,
      'repositoryUrl': ?repositoryUrl,
    };
  }

  factory GetRegistryRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryRepositoryResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
