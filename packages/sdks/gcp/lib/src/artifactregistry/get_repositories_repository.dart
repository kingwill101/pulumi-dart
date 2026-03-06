// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoriesRepository {
  /// The time when the repository was created.
  final pulumi.Input<String> createTime;
  /// The user-provided description of the repository.
  final pulumi.Input<String> description;
  /// The format of packages that are stored in the repository. Supported formats can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  final pulumi.Input<String> format;
  /// An identifier for the resource with format `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
  final pulumi.Input<String> id;
  /// The last part of the repository name, for example: `"repo1"`
  final pulumi.Input<String> repositoryId;
  /// The time when the repository was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetRepositoriesRepository].
  /// [createTime] The time when the repository was created.
  /// [description] The user-provided description of the repository.
  /// [format] The format of packages that are stored in the repository. Supported formats can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  /// [id] An identifier for the resource with format `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
  /// [repositoryId] The last part of the repository name, for example: `"repo1"`
  /// [updateTime] The time when the repository was last updated.
  const GetRepositoriesRepository({
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

