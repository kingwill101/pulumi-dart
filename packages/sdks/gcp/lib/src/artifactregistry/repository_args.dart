// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_cleanup_policy.dart';
import 'repository_docker_config.dart';
import 'repository_maven_config.dart';
import 'repository_remote_repository_config.dart';
import 'repository_virtual_repository_config.dart';
import 'repository_vulnerability_scanning_config.dart';

/// {@template pulumi_artifactregistry_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_repository_repository_args_doc}
class RepositoryArgs {
  /// Cleanup policies for this repository. Cleanup policies indicate when
  /// certain package versions can be automatically deleted.
  /// Map keys are policy IDs supplied by users during policy creation. They must
  /// unique within a repository and be under 128 characters in length.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryCleanupPolicy>?>? cleanupPolicies;
  /// If true, the cleanup pipeline is prevented from deleting versions in this
  /// repository.
  final pulumi.Input<bool?>? cleanupPolicyDryRun;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-provided description of the repository.
  final pulumi.Input<String?>? description;
  /// Docker repository config contains repository level configuration for the repositories of docker type.
  /// Structure is documented below.
  final pulumi.Input<RepositoryDockerConfig?>? dockerConfig;
  /// The format of packages that are stored in the repository. Supported formats
  /// can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  /// You can only create alpha formats if you are a member of the
  /// [alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  final pulumi.Input<String> format;
  /// The Cloud KMS resource name of the customer managed encryption key that’s
  /// used to encrypt the contents of the Repository. Has the form:
  /// `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
  /// This value may not be changed after the Repository has been created.
  final pulumi.Input<String?>? kmsKeyName;
  /// Labels with user-defined metadata.
  /// This field may contain up to 64 entries. Label keys and values may be no
  /// longer than 63 characters. Label keys must begin with a lowercase letter
  /// and may only contain lowercase letters, numeric characters, underscores,
  /// and dashes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values.
  final pulumi.Input<String?>? location;
  /// MavenRepositoryConfig is maven related repository details.
  /// Provides additional configuration details for repositories of the maven
  /// format type.
  /// Structure is documented below.
  final pulumi.Input<RepositoryMavenConfig?>? mavenConfig;
  /// The mode configures the repository to serve artifacts from different sources.
  /// Default value is `STANDARD_REPOSITORY`.
  /// Possible values are: `STANDARD_REPOSITORY`, `VIRTUAL_REPOSITORY`, `REMOTE_REPOSITORY`.
  final pulumi.Input<String?>? mode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Configuration specific for a Remote Repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfig?>? remoteRepositoryConfig;
  /// The last part of the repository name, for example:
  /// "repo1"
  final pulumi.Input<String> repositoryId;
  /// Configuration specific for a Virtual Repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryVirtualRepositoryConfig?>? virtualRepositoryConfig;
  /// Configuration for vulnerability scanning of artifacts stored in this repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryVulnerabilityScanningConfig?>? vulnerabilityScanningConfig;

  /// Creates a new [RepositoryArgs].
  /// [cleanupPolicies] Cleanup policies for this repository. Cleanup policies indicate when
  /// [cleanupPolicyDryRun] If true, the cleanup pipeline is prevented from deleting versions in this
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The user-provided description of the repository.
  /// [dockerConfig] Docker repository config contains repository level configuration for the repositories of docker type.
  /// [format] The format of packages that are stored in the repository. Supported formats
  /// [kmsKeyName] The Cloud KMS resource name of the customer managed encryption key that’s
  /// [labels] Labels with user-defined metadata.
  /// [location] The name of the repository's location. In addition to specific regions,
  /// [mavenConfig] MavenRepositoryConfig is maven related repository details.
  /// [mode] The mode configures the repository to serve artifacts from different sources.
  /// [project] The ID of the project in which the resource belongs.
  /// [remoteRepositoryConfig] Configuration specific for a Remote Repository.
  /// [repositoryId] The last part of the repository name, for example:
  /// [virtualRepositoryConfig] Configuration specific for a Virtual Repository.
  /// [vulnerabilityScanningConfig] Configuration for vulnerability scanning of artifacts stored in this repository.
  const RepositoryArgs({
    this.cleanupPolicies,
    this.cleanupPolicyDryRun,
    this.deletionPolicy,
    this.description,
    this.dockerConfig,
    required this.format,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.mavenConfig,
    this.mode,
    this.project,
    this.remoteRepositoryConfig,
    required this.repositoryId,
    this.virtualRepositoryConfig,
    this.vulnerabilityScanningConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicies': ?pulumi.Input.mapOptionalInputValue<List<RepositoryCleanupPolicy>, List<Map<String, dynamic>>>(cleanupPolicies, (value) => pulumi.Input.encodeList<RepositoryCleanupPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cleanupPolicyDryRun': ?cleanupPolicyDryRun,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dockerConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryDockerConfig, Map<String, dynamic>>(dockerConfig, (value) => value.toMap()),
      'format': format,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'mavenConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryMavenConfig, Map<String, dynamic>>(mavenConfig, (value) => value.toMap()),
      'mode': ?mode,
      'project': ?project,
      'remoteRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfig, Map<String, dynamic>>(remoteRepositoryConfig, (value) => value.toMap()),
      'repositoryId': repositoryId,
      'virtualRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryVirtualRepositoryConfig, Map<String, dynamic>>(virtualRepositoryConfig, (value) => value.toMap()),
      'vulnerabilityScanningConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryVulnerabilityScanningConfig, Map<String, dynamic>>(vulnerabilityScanningConfig, (value) => value.toMap()),
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      cleanupPolicies: (() { final guardedValue = map['cleanupPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryCleanupPolicy>(guardedValue, (value) => RepositoryCleanupPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cleanupPolicyDryRun: (() { final guardedValue = map['cleanupPolicyDryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerConfig: (() { final guardedValue = map['dockerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryDockerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mavenConfig: (() { final guardedValue = map['mavenConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryMavenConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteRepositoryConfig: (() { final guardedValue = map['remoteRepositoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryRemoteRepositoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      virtualRepositoryConfig: (() { final guardedValue = map['virtualRepositoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryVirtualRepositoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerabilityScanningConfig: (() { final guardedValue = map['vulnerabilityScanningConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryVulnerabilityScanningConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
