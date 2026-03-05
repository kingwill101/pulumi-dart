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
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.initialConfig,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.repositoryId,
    this.uid,
    this.updateTime,
    this.uris,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialConfig: (() { final guardedValue = map['initialConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryInitialConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryUri>(guardedValue, (value) => RepositoryUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

