// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTag.
class GetTagResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  final String name;
  final String packageName;
  final String? project;
  final String repositoryId;
  final String tagName;
  /// The version of the tag.
  final String version;

  /// Creates a new [GetTagResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  /// [packageName] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tagName] Required.
  /// [version] The version of the tag.
  const GetTagResult({
    required this.id,
    required this.location,
    required this.name,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.tagName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
      'tagName': tagName,
      'version': version,
    };
  }

  factory GetTagResult.fromMap(Map<String, dynamic> map) {
    return GetTagResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: map['repositoryId'] as String,
      tagName: map['tagName'] as String,
      version: map['version'] as String,
    );
  }
}
