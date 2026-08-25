// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTag.
class GetTagResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  final String? name;
  final String? packageName;
  final String? project;
  final String? repositoryId;
  final String? tagName;
  /// The version of the tag.
  final String? version;

  /// Creates a new [GetTagResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  /// [packageName] Optional.
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [tagName] Optional.
  /// [version] The version of the tag.
  const GetTagResult({
    this.id,
    this.location,
    this.name,
    this.packageName,
    this.project,
    this.repositoryId,
    this.tagName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'packageName': ?packageName,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'tagName': ?tagName,
      'version': ?version,
    };
  }

  factory GetTagResult.fromMap(Map<String, dynamic> map) {
    return GetTagResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
