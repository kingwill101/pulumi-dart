// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_pubsub_config.dart';

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// If set to true, skip repository creation if a repository with the same name already exists.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;
  /// Resource name of the repository, of the form `{{repo}}`.
  /// The repo name may contain slashes. eg, `name/with/slash`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// How this repository publishes a change in the repository through Cloud Pub/Sub.
  /// Keyed by the topic names.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryPubsubConfig>>? pubsubConfigs;
  /// The disk usage of the repo, in bytes.
  final pulumi.Input<int>? size;
  /// URL to clone the repository from Google Cloud Source Repositories.
  final pulumi.Input<String>? url;

  /// Creates a new [RepositoryState].
  /// [createIgnoreAlreadyExists] If set to true, skip repository creation if a repository with the same name already exists.
  /// [name] Resource name of the repository, of the form `{{repo}}`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubConfigs] How this repository publishes a change in the repository through Cloud Pub/Sub.
  /// [size] The disk usage of the repo, in bytes.
  /// [url] URL to clone the repository from Google Cloud Source Repositories.
  RepositoryState({
    this.createIgnoreAlreadyExists,
    this.name,
    this.project,
    this.pubsubConfigs,
    this.size,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'name': ?name,
      'project': ?project,
      'pubsubConfigs': ?pulumi.Input.mapOptionalInputValue<List<RepositoryPubsubConfig>, List<Map<String, dynamic>>>(pubsubConfigs, (value) => pulumi.Input.encodeList<RepositoryPubsubConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': ?size,
      'url': ?url,
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] == null ? null : (map['createIgnoreAlreadyExists']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pubsubConfigs: map['pubsubConfigs'] == null ? null : (pulumi.Input.decodeList<RepositoryPubsubConfig>(map['pubsubConfigs']!, (value) => RepositoryPubsubConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

