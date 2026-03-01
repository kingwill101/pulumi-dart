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
    pulumi.Output<Map<String, String>>? cleanupPolicies,
    pulumi.Output<bool>? cleanupPolicyDryRun,
    pulumi.Output<String>? description,
    pulumi.Output<DockerRepositoryConfig>? dockerConfig,
    pulumi.Output<RepositoryFormat>? format,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MavenRepositoryConfig>? mavenConfig,
    pulumi.Output<RepositoryMode>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<RemoteRepositoryConfig>? remoteRepositoryConfig,
    required pulumi.Output<String> repositoryId,
    pulumi.Output<VirtualRepositoryConfig>? virtualRepositoryConfig,
  }) :
      cleanupPolicies = pulumi.Input.asOptionalInput<Map<String, String>>(cleanupPolicies),
      cleanupPolicyDryRun = pulumi.Input.asOptionalInput<bool>(cleanupPolicyDryRun),
      description = pulumi.Input.asOptionalInput<String>(description),
      dockerConfig = pulumi.Input.asOptionalInput<DockerRepositoryConfig>(dockerConfig),
      format = pulumi.Input.asOptionalInput<RepositoryFormat>(format),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mavenConfig = pulumi.Input.asOptionalInput<MavenRepositoryConfig>(mavenConfig),
      mode = pulumi.Input.asOptionalInput<RepositoryMode>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      remoteRepositoryConfig = pulumi.Input.asOptionalInput<RemoteRepositoryConfig>(remoteRepositoryConfig),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      virtualRepositoryConfig = pulumi.Input.asOptionalInput<VirtualRepositoryConfig>(virtualRepositoryConfig);

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
      cleanupPolicies: map['cleanupPolicies'] == null ? null : pulumi.Output.create<Map<String, String>>((map['cleanupPolicies'] as Map).cast<String, String>()),
      cleanupPolicyDryRun: map['cleanupPolicyDryRun'] == null ? null : pulumi.Output.create<bool>(map['cleanupPolicyDryRun'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dockerConfig: map['dockerConfig'] == null ? null : pulumi.Output.create<DockerRepositoryConfig>(DockerRepositoryConfig.fromMap((map['dockerConfig'] as Map).cast<String, dynamic>())),
      format: map['format'] == null ? null : pulumi.Output.create<RepositoryFormat>(RepositoryFormat.fromValue(map['format'] as String)),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mavenConfig: map['mavenConfig'] == null ? null : pulumi.Output.create<MavenRepositoryConfig>(MavenRepositoryConfig.fromMap((map['mavenConfig'] as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : pulumi.Output.create<RepositoryMode>(RepositoryMode.fromValue(map['mode'] as String)),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      remoteRepositoryConfig: map['remoteRepositoryConfig'] == null ? null : pulumi.Output.create<RemoteRepositoryConfig>(RemoteRepositoryConfig.fromMap((map['remoteRepositoryConfig'] as Map).cast<String, dynamic>())),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      virtualRepositoryConfig: map['virtualRepositoryConfig'] == null ? null : pulumi.Output.create<VirtualRepositoryConfig>(VirtualRepositoryConfig.fromMap((map['virtualRepositoryConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

