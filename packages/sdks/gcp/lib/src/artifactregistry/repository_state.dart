// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_cleanup_policy.dart';
import 'repository_docker_config.dart';
import 'repository_maven_config.dart';
import 'repository_remote_repository_config.dart';
import 'repository_virtual_repository_config.dart';
import 'repository_vulnerability_scanning_config.dart';

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// Cleanup policies for this repository. Cleanup policies indicate when
  /// certain package versions can be automatically deleted.
  /// Map keys are policy IDs supplied by users during policy creation. They must
  /// unique within a repository and be under 128 characters in length.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryCleanupPolicy>>? cleanupPolicies;
  /// If true, the cleanup pipeline is prevented from deleting versions in this
  /// repository.
  final pulumi.Input<bool>? cleanupPolicyDryRun;
  /// The time when the repository was created.
  final pulumi.Input<String>? createTime;
  /// The user-provided description of the repository.
  final pulumi.Input<String>? description;
  /// Docker repository config contains repository level configuration for the repositories of docker type.
  /// Structure is documented below.
  final pulumi.Input<RepositoryDockerConfig>? dockerConfig;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The format of packages that are stored in the repository. Supported formats
  /// can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  /// You can only create alpha formats if you are a member of the
  /// [alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  final pulumi.Input<String>? format;
  /// The Cloud KMS resource name of the customer managed encryption key that’s
  /// used to encrypt the contents of the Repository. Has the form:
  /// `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
  /// This value may not be changed after the Repository has been created.
  final pulumi.Input<String>? kmsKeyName;
  /// Labels with user-defined metadata.
  /// This field may contain up to 64 entries. Label keys and values may be no
  /// longer than 63 characters. Label keys must begin with a lowercase letter
  /// and may only contain lowercase letters, numeric characters, underscores,
  /// and dashes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values.
  final pulumi.Input<String>? location;
  /// MavenRepositoryConfig is maven related repository details.
  /// Provides additional configuration details for repositories of the maven
  /// format type.
  /// Structure is documented below.
  final pulumi.Input<RepositoryMavenConfig>? mavenConfig;
  /// The mode configures the repository to serve artifacts from different sources.
  /// Default value is `STANDARD_REPOSITORY`.
  /// Possible values are: `STANDARD_REPOSITORY`, `VIRTUAL_REPOSITORY`, `REMOTE_REPOSITORY`.
  final pulumi.Input<String>? mode;
  /// The name of the repository, for example:
  /// "repo1"
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The repository endpoint, for example: us-docker.pkg.dev/my-proj/my-repo.
  final pulumi.Input<String>? registryUri;
  /// Configuration specific for a Remote Repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfig>? remoteRepositoryConfig;
  /// The last part of the repository name, for example:
  /// "repo1"
  final pulumi.Input<String>? repositoryId;
  /// The time when the repository was last updated.
  final pulumi.Input<String>? updateTime;
  /// Configuration specific for a Virtual Repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryVirtualRepositoryConfig>? virtualRepositoryConfig;
  /// Configuration for vulnerability scanning of artifacts stored in this repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryVulnerabilityScanningConfig>? vulnerabilityScanningConfig;

  /// Creates a new [RepositoryState].
  /// [cleanupPolicies] Cleanup policies for this repository. Cleanup policies indicate when
  /// [cleanupPolicyDryRun] If true, the cleanup pipeline is prevented from deleting versions in this
  /// [createTime] The time when the repository was created.
  /// [description] The user-provided description of the repository.
  /// [dockerConfig] Docker repository config contains repository level configuration for the repositories of docker type.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [format] The format of packages that are stored in the repository. Supported formats
  /// [kmsKeyName] The Cloud KMS resource name of the customer managed encryption key that’s
  /// [labels] Labels with user-defined metadata.
  /// [location] The name of the repository's location. In addition to specific regions,
  /// [mavenConfig] MavenRepositoryConfig is maven related repository details.
  /// [mode] The mode configures the repository to serve artifacts from different sources.
  /// [name] The name of the repository, for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [registryUri] The repository endpoint, for example: us-docker.pkg.dev/my-proj/my-repo.
  /// [remoteRepositoryConfig] Configuration specific for a Remote Repository.
  /// [repositoryId] The last part of the repository name, for example:
  /// [updateTime] The time when the repository was last updated.
  /// [virtualRepositoryConfig] Configuration specific for a Virtual Repository.
  /// [vulnerabilityScanningConfig] Configuration for vulnerability scanning of artifacts stored in this repository.
  RepositoryState({
    this.cleanupPolicies,
    this.cleanupPolicyDryRun,
    this.createTime,
    this.description,
    this.dockerConfig,
    this.effectiveLabels,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.mavenConfig,
    this.mode,
    this.name,
    this.project,
    this.pulumiLabels,
    this.registryUri,
    this.remoteRepositoryConfig,
    this.repositoryId,
    this.updateTime,
    this.virtualRepositoryConfig,
    this.vulnerabilityScanningConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicies': ?pulumi.Input.mapOptionalInputValue<List<RepositoryCleanupPolicy>, List<Map<String, dynamic>>>(cleanupPolicies, (value) => pulumi.Input.encodeList<RepositoryCleanupPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cleanupPolicyDryRun': ?cleanupPolicyDryRun,
      'createTime': ?createTime,
      'description': ?description,
      'dockerConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryDockerConfig, Map<String, dynamic>>(dockerConfig, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'format': ?format,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'mavenConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryMavenConfig, Map<String, dynamic>>(mavenConfig, (value) => value.toMap()),
      'mode': ?mode,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'registryUri': ?registryUri,
      'remoteRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfig, Map<String, dynamic>>(remoteRepositoryConfig, (value) => value.toMap()),
      'repositoryId': ?repositoryId,
      'updateTime': ?updateTime,
      'virtualRepositoryConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryVirtualRepositoryConfig, Map<String, dynamic>>(virtualRepositoryConfig, (value) => value.toMap()),
      'vulnerabilityScanningConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryVulnerabilityScanningConfig, Map<String, dynamic>>(vulnerabilityScanningConfig, (value) => value.toMap()),
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      cleanupPolicies: map['cleanupPolicies'] == null ? null : (pulumi.Input.decodeList<RepositoryCleanupPolicy>(map['cleanupPolicies']!, (value) => RepositoryCleanupPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cleanupPolicyDryRun: map['cleanupPolicyDryRun'] == null ? null : (map['cleanupPolicyDryRun']! as bool).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dockerConfig: map['dockerConfig'] == null ? null : (RepositoryDockerConfig.fromMap((map['dockerConfig']! as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mavenConfig: map['mavenConfig'] == null ? null : (RepositoryMavenConfig.fromMap((map['mavenConfig']! as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      registryUri: map['registryUri'] == null ? null : (map['registryUri']! as String).input(),
      remoteRepositoryConfig: map['remoteRepositoryConfig'] == null ? null : (RepositoryRemoteRepositoryConfig.fromMap((map['remoteRepositoryConfig']! as Map).cast<String, dynamic>())).input(),
      repositoryId: map['repositoryId'] == null ? null : (map['repositoryId']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      virtualRepositoryConfig: map['virtualRepositoryConfig'] == null ? null : (RepositoryVirtualRepositoryConfig.fromMap((map['virtualRepositoryConfig']! as Map).cast<String, dynamic>())).input(),
      vulnerabilityScanningConfig: map['vulnerabilityScanningConfig'] == null ? null : (RepositoryVulnerabilityScanningConfig.fromMap((map['vulnerabilityScanningConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

