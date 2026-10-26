// ignore_for_file: unused_element, unnecessary_cast

import 'docker_repository_config_response.dart';
import 'maven_repository_config_response.dart';
import 'remote_repository_config_response.dart';
import 'virtual_repository_config_response.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  /// Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package versions can be automatically deleted. Map keys are policy IDs supplied by users during policy creation. They must unique within a repository and be under 128 characters in length.
  final Map<String, String>? cleanupPolicies;
  /// Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository.
  final bool? cleanupPolicyDryRun;
  /// The time when the repository was created.
  final String? createTime;
  /// The user-provided description of the repository.
  final String? description;
  /// Docker repository config contains repository level configuration for the repositories of docker type.
  final DockerRepositoryConfigResponse? dockerConfig;
  /// Optional. The format of packages that are stored in the repository.
  final String? format;
  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  final String? kmsKeyName;
  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  final Map<String, String>? labels;
  /// Maven repository config contains repository level configuration for the repositories of maven type.
  final MavenRepositoryConfigResponse? mavenConfig;
  /// Optional. The mode of the repository.
  final String? mode;
  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final String? name;
  /// Configuration specific for a Remote Repository.
  final RemoteRepositoryConfigResponse? remoteRepositoryConfig;
  /// If set, the repository satisfies physical zone separation.
  final bool? satisfiesPzs;
  /// The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  final String? sizeBytes;
  /// The time when the repository was last updated.
  final String? updateTime;
  /// Configuration specific for a Virtual Repository.
  final VirtualRepositoryConfigResponse? virtualRepositoryConfig;

  /// Creates a new [GetRepositoryResult].
  /// [cleanupPolicies] Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package versions can be automatically deleted. Map keys are policy IDs supplied by users during policy creation. They must unique within a repository and be under 128 characters in length.
  /// [cleanupPolicyDryRun] Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository.
  /// [createTime] The time when the repository was created.
  /// [description] The user-provided description of the repository.
  /// [dockerConfig] Docker repository config contains repository level configuration for the repositories of docker type.
  /// [format] Optional. The format of packages that are stored in the repository.
  /// [kmsKeyName] The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  /// [labels] Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  /// [mavenConfig] Maven repository config contains repository level configuration for the repositories of maven type.
  /// [mode] Optional. The mode of the repository.
  /// [name] The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  /// [remoteRepositoryConfig] Configuration specific for a Remote Repository.
  /// [satisfiesPzs] If set, the repository satisfies physical zone separation.
  /// [sizeBytes] The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  /// [updateTime] The time when the repository was last updated.
  /// [virtualRepositoryConfig] Configuration specific for a Virtual Repository.
  const GetRepositoryResult({
    this.cleanupPolicies,
    this.cleanupPolicyDryRun,
    this.createTime,
    this.description,
    this.dockerConfig,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.mavenConfig,
    this.mode,
    this.name,
    this.remoteRepositoryConfig,
    this.satisfiesPzs,
    this.sizeBytes,
    this.updateTime,
    this.virtualRepositoryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicies': ?cleanupPolicies,
      'cleanupPolicyDryRun': ?cleanupPolicyDryRun,
      'createTime': ?createTime,
      'description': ?description,
      'dockerConfig': ?dockerConfig?.toMap(),
      'format': ?format,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'mavenConfig': ?mavenConfig?.toMap(),
      'mode': ?mode,
      'name': ?name,
      'remoteRepositoryConfig': ?remoteRepositoryConfig?.toMap(),
      'satisfiesPzs': ?satisfiesPzs,
      'sizeBytes': ?sizeBytes,
      'updateTime': ?updateTime,
      'virtualRepositoryConfig': ?virtualRepositoryConfig?.toMap(),
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      cleanupPolicies: (() { final guardedValue = map['cleanupPolicies']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      cleanupPolicyDryRun: (() { final guardedValue = map['cleanupPolicyDryRun']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerConfig: (() { final guardedValue = map['dockerConfig']; if (guardedValue == null) return null; return DockerRepositoryConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mavenConfig: (() { final guardedValue = map['mavenConfig']; if (guardedValue == null) return null; return MavenRepositoryConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteRepositoryConfig: (() { final guardedValue = map['remoteRepositoryConfig']; if (guardedValue == null) return null; return RemoteRepositoryConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualRepositoryConfig: (() { final guardedValue = map['virtualRepositoryConfig']; if (guardedValue == null) return null; return VirtualRepositoryConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
