// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPythonPackage.
class GetPythonPackageResult {
  /// The time the package was created.
  final String? createTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The fully qualified name of the fetched package. Format:
  /// ```
  /// projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/pythonPackages/{{package}}:{{version}}
  /// ```
  final String? name;
  final String? packageName;
  final String? project;
  final String? repositoryId;
  /// The time the package was last updated.
  final String? updateTime;
  /// The version of the Python package.
  final String? version;

  /// Creates a new [GetPythonPackageResult].
  /// [createTime] The time the package was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The fully qualified name of the fetched package. Format:
  /// [packageName] Optional.
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [updateTime] The time the package was last updated.
  /// [version] The version of the Python package.
  const GetPythonPackageResult({
    this.createTime,
    this.id,
    this.location,
    this.name,
    this.packageName,
    this.project,
    this.repositoryId,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'packageName': ?packageName,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory GetPythonPackageResult.fromMap(Map<String, dynamic> map) {
    return GetPythonPackageResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
