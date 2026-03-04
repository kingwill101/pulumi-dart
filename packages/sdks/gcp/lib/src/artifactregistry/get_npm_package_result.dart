// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNpmPackage.
class GetNpmPackageResult {
  /// The time the package was created.
  final String createTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// The fully qualified name of the fetched package. Format:
  /// ```
  /// projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/npmPackages/{{package}}:{{version}}
  /// ```
  final String name;
  final String packageName;
  final String? project;
  final String repositoryId;

  /// A list of all Tags attached to this package.
  final List<String> tags;

  /// The time the package was last updated.
  final String updateTime;

  /// The version of the NPM package.
  final String version;

  /// Creates a new [GetNpmPackageResult].
  /// [createTime] The time the package was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] The fully qualified name of the fetched package. Format:
  /// [packageName] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tags] A list of all Tags attached to this package.
  /// [updateTime] The time the package was last updated.
  /// [version] The version of the NPM package.
  GetNpmPackageResult({
    required this.createTime,
    required this.id,
    required this.location,
    required this.name,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.tags,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'location': location,
      'name': name,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
      'tags': tags,
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetNpmPackageResult.fromMap(Map<String, dynamic> map) {
    return GetNpmPackageResult(
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      repositoryId: map['repositoryId'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updateTime: map['updateTime'] as String,
      version: map['version'] as String,
    );
  }
}
