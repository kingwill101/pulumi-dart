// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRepository.
class GetRepositoryArtifactregistryV1beta1Result {
  /// The time when the repository was created.
  final String? createTime;
  /// The user-provided description of the repository.
  final String? description;
  /// Optional. The format of packages that are stored in the repository.
  final String? format;
  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  final String? kmsKeyName;
  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  final Map<String, String>? labels;
  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final String? name;
  /// If set, the repository satisfies physical zone separation.
  final bool? satisfiesPzs;
  /// The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  final String? sizeBytes;
  /// The time when the repository was last updated.
  final String? updateTime;

  /// Creates a new [GetRepositoryArtifactregistryV1beta1Result].
  /// [createTime] The time when the repository was created.
  /// [description] The user-provided description of the repository.
  /// [format] Optional. The format of packages that are stored in the repository.
  /// [kmsKeyName] The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  /// [labels] Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  /// [name] The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  /// [satisfiesPzs] If set, the repository satisfies physical zone separation.
  /// [sizeBytes] The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  /// [updateTime] The time when the repository was last updated.
  const GetRepositoryArtifactregistryV1beta1Result({
    this.createTime,
    this.description,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.satisfiesPzs,
    this.sizeBytes,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'format': ?format,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'name': ?name,
      'satisfiesPzs': ?satisfiesPzs,
      'sizeBytes': ?sizeBytes,
      'updateTime': ?updateTime,
    };
  }

  factory GetRepositoryArtifactregistryV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArtifactregistryV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
