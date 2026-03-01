// ignore_for_file: unused_element, unnecessary_cast


class GetRepositoriesRepository {
  /// The time when the repository was created.
  final String createTime;
  /// The user-provided description of the repository.
  final String description;
  /// The format of packages that are stored in the repository. Supported formats can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  final String format;
  /// An identifier for the resource with format `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
  final String id;
  /// The last part of the repository name, for example: `"repo1"`
  final String repositoryId;
  /// The time when the repository was last updated.
  final String updateTime;

  /// Creates a new [GetRepositoriesRepository].
  /// [createTime] The time when the repository was created.
  /// [description] The user-provided description of the repository.
  /// [format] The format of packages that are stored in the repository. Supported formats can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  /// [id] An identifier for the resource with format `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
  /// [repositoryId] The last part of the repository name, for example: `"repo1"`
  /// [updateTime] The time when the repository was last updated.
  GetRepositoriesRepository({
    required this.createTime,
    required this.description,
    required this.format,
    required this.id,
    required this.repositoryId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'format': format,
      'id': id,
      'repositoryId': repositoryId,
      'updateTime': updateTime,
    };
  }

  factory GetRepositoriesRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesRepository(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      format: map['format'] as String,
      id: map['id'] as String,
      repositoryId: map['repositoryId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

