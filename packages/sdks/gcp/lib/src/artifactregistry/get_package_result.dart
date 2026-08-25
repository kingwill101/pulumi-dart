// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPackage.
class GetPackageResult {
  /// Client specified annotations.
  final Map<String, String>? annotations;
  /// The time, as a RFC 3339 string, this package was created.
  final String? createTime;
  /// The display name of the package.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final String? project;
  final String? repositoryId;
  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final String? updateTime;

  /// Creates a new [GetPackageResult].
  /// [annotations] Client specified annotations.
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [displayName] The display name of the package.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [updateTime] The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  const GetPackageResult({
    this.annotations,
    this.createTime,
    this.displayName,
    this.id,
    this.location,
    this.name,
    this.project,
    this.repositoryId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'updateTime': ?updateTime,
    };
  }

  factory GetPackageResult.fromMap(Map<String, dynamic> map) {
    return GetPackageResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
