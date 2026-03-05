// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_repository_config.dart';
import 'maven_repository_config.dart';
import 'remote_repository_config.dart';
import 'repository_format.dart';
import 'repository_mode.dart';
import 'virtual_repository_config.dart';

/// {@template pulumi_artifactregistry_v1_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1_repository_args_doc}
class RepositoryArgs {
  /// Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package versions can be automatically deleted. Map keys are policy IDs supplied by users during policy creation. They must unique within a repository and be under 128 characters in length.
  final pulumi.Input<Map<String, String>>? cleanupPolicies;
  /// Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository.
  final pulumi.Input<bool>? cleanupPolicyDryRun;
  /// The user-provided description of the repository.
  final pulumi.Input<String>? description;
  /// Docker repository config contains repository level configuration for the repositories of docker type.
  final pulumi.Input<DockerRepositoryConfig>? dockerConfig;
  /// Optional. The format of packages that are stored in the repository.
  final pulumi.Input<RepositoryFormat>? format;
  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  final pulumi.Input<String>? kmsKeyName;
  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Maven repository config contains repository level configuration for the repositories of maven type.
  final pulumi.Input<MavenRepositoryConfig>? mavenConfig;
  /// Optional. The mode of the repository.
  final pulumi.Input<RepositoryMode>? mode;
  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Configuration specific for a Remote Repository.
  final pulumi.Input<RemoteRepositoryConfig>? remoteRepositoryConfig;
  /// Required. The repository id to use for this repository.
  final pulumi.Input<String> repositoryId;
  /// Configuration specific for a Virtual Repository.
  final pulumi.Input<VirtualRepositoryConfig>? virtualRepositoryConfig;

  /// Creates a new [RepositoryArgs].
  /// [cleanupPolicies] Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package versions can be automatically deleted. Map keys are policy IDs supplied by users during policy creation. They must unique within a repository and be under 128 characters in length.
  /// [cleanupPolicyDryRun] Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository.
  /// [description] The user-provided description of the repository.
  /// [dockerConfig] Docker repository config contains repository level configuration for the repositories of docker type.
  /// [format] Optional. The format of packages that are stored in the repository.
  /// [kmsKeyName] The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  /// [labels] Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  /// [location] Optional.
  /// [mavenConfig] Maven repository config contains repository level configuration for the repositories of maven type.
  /// [mode] Optional. The mode of the repository.
  /// [name] The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  /// [project] Optional.
  /// [remoteRepositoryConfig] Configuration specific for a Remote Repository.
  /// [repositoryId] Required. The repository id to use for this repository.
  /// [virtualRepositoryConfig] Configuration specific for a Virtual Repository.
  RepositoryArgs({
    this.cleanupPolicies,
    this.cleanupPolicyDryRun,
    this.description,
    this.dockerConfig,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.mavenConfig,
    this.mode,
    this.name,
    this.project,
    this.remoteRepositoryConfig,
    required this.repositoryId,
    this.virtualRepositoryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicies': ?cleanupPolicies,
      'cleanupPolicyDryRun': ?cleanupPolicyDryRun,
      'description': ?description,
      'dockerConfig': ?pulumi.Input.mapOptionalInputValue<DockerRepositoryConfig, Map<String, dynamic>>(dockerConfig, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<RepositoryFormat, String>(format, (value) => value.wireValue),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'mavenConfig': ?pulumi.Input.mapOptionalInputValue<MavenRepositoryConfig, Map<String, dynamic>>(mavenConfig, (value) => value.toMap()),
      'mode': ?pulumi.Input.mapOptionalInputValue<RepositoryMode, String>(mode, (value) => value.wireValue),
      'name': ?name,
      'project': ?project,
      'remoteRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<RemoteRepositoryConfig, Map<String, dynamic>>(remoteRepositoryConfig, (value) => value.toMap()),
      'repositoryId': repositoryId,
      'virtualRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<VirtualRepositoryConfig, Map<String, dynamic>>(virtualRepositoryConfig, (value) => value.toMap()),
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      cleanupPolicies: (() { final guardedValue = map['cleanupPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cleanupPolicyDryRun: (() { final guardedValue = map['cleanupPolicyDryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerConfig: (() { final guardedValue = map['dockerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerRepositoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryFormat.fromValue(guardedValue as String)); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mavenConfig: (() { final guardedValue = map['mavenConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MavenRepositoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryMode.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteRepositoryConfig: (() { final guardedValue = map['remoteRepositoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemoteRepositoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      virtualRepositoryConfig: (() { final guardedValue = map['virtualRepositoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualRepositoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

