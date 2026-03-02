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
      'format': ?pulumi.Input.mapOptionalInputValue<RepositoryFormat, String>(format, (value) => value.value),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'mavenConfig': ?pulumi.Input.mapOptionalInputValue<MavenRepositoryConfig, Map<String, dynamic>>(mavenConfig, (value) => value.toMap()),
      'mode': ?pulumi.Input.mapOptionalInputValue<RepositoryMode, String>(mode, (value) => value.value),
      'name': ?name,
      'project': ?project,
      'remoteRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<RemoteRepositoryConfig, Map<String, dynamic>>(remoteRepositoryConfig, (value) => value.toMap()),
      'repositoryId': repositoryId,
      'virtualRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<VirtualRepositoryConfig, Map<String, dynamic>>(virtualRepositoryConfig, (value) => value.toMap()),
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      cleanupPolicies: map['cleanupPolicies'] == null ? null : ((map['cleanupPolicies']! as Map).cast<String, String>()).input(),
      cleanupPolicyDryRun: map['cleanupPolicyDryRun'] == null ? null : (map['cleanupPolicyDryRun']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dockerConfig: map['dockerConfig'] == null ? null : (DockerRepositoryConfig.fromMap((map['dockerConfig']! as Map).cast<String, dynamic>())).input(),
      format: map['format'] == null ? null : (RepositoryFormat.fromValue(map['format']! as String)).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mavenConfig: map['mavenConfig'] == null ? null : (MavenRepositoryConfig.fromMap((map['mavenConfig']! as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (RepositoryMode.fromValue(map['mode']! as String)).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      remoteRepositoryConfig: map['remoteRepositoryConfig'] == null ? null : (RemoteRepositoryConfig.fromMap((map['remoteRepositoryConfig']! as Map).cast<String, dynamic>())).input(),
      repositoryId: (map['repositoryId'] as String).input(),
      virtualRepositoryConfig: map['virtualRepositoryConfig'] == null ? null : (VirtualRepositoryConfig.fromMap((map['virtualRepositoryConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

