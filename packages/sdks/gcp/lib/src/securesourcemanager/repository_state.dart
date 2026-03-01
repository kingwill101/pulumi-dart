// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_initial_config.dart';
import 'repository_uri.dart';

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// Time the repository was created in UTC.
  final pulumi.Input<String>? createTime;
  /// The deletion policy for the repository. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental deletion
  /// by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the repository, which cannot exceed 500 characters.
  final pulumi.Input<String>? description;
  /// Initial configurations for the repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryInitialConfig>? initialConfig;
  /// The name of the instance in which the repository is hosted.
  final pulumi.Input<String>? instance;
  /// The location for the Repository.
  final pulumi.Input<String>? location;
  /// The resource name for the Repository.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID for the Repository.
  final pulumi.Input<String>? repositoryId;
  /// Unique identifier of the repository.
  final pulumi.Input<String>? uid;
  /// Time the repository was updated in UTC.
  final pulumi.Input<String>? updateTime;
  /// URIs for the repository.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryUri>>? uris;

  /// Creates a new [RepositoryState].
  /// [createTime] Time the repository was created in UTC.
  /// [deletionPolicy] The deletion policy for the repository. Setting `ABANDON` allows the resource
  /// [description] Description of the repository, which cannot exceed 500 characters.
  /// [initialConfig] Initial configurations for the repository.
  /// [instance] The name of the instance in which the repository is hosted.
  /// [location] The location for the Repository.
  /// [name] The resource name for the Repository.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryId] The ID for the Repository.
  /// [uid] Unique identifier of the repository.
  /// [updateTime] Time the repository was updated in UTC.
  /// [uris] URIs for the repository.
  RepositoryState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? description,
    pulumi.Output<RepositoryInitialConfig>? initialConfig,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? repositoryId,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<List<RepositoryUri>>? uris,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      initialConfig = pulumi.Input.asOptionalInput<RepositoryInitialConfig>(initialConfig),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asOptionalInput<String>(repositoryId),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      uris = pulumi.Input.asOptionalInput<List<RepositoryUri>>(uris);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'initialConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryInitialConfig, Map<String, dynamic>>(initialConfig, (value) => value.toMap()),
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'uris': ?pulumi.Input.mapOptionalInputValue<List<RepositoryUri>, List<Map<String, dynamic>>>(uris, (value) => pulumi.Input.encodeList<RepositoryUri, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      initialConfig: map['initialConfig'] == null ? null : pulumi.Output.create<RepositoryInitialConfig>(RepositoryInitialConfig.fromMap((map['initialConfig'] as Map).cast<String, dynamic>())),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: map['repositoryId'] == null ? null : pulumi.Output.create<String>(map['repositoryId'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      uris: map['uris'] == null ? null : pulumi.Output.create<List<RepositoryUri>>(pulumi.Input.decodeList<RepositoryUri>(map['uris'], (value) => RepositoryUri.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

