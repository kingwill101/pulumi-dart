// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_pubsub_config.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  final bool createIgnoreAlreadyExists;
  final String deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final List<GetRepositoryPubsubConfig> pubsubConfigs;
  final int size;
  final String url;

  /// Creates a new [GetRepositoryResult].
  /// [createIgnoreAlreadyExists] Required.
  /// [deletionPolicy] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  /// [pubsubConfigs] Required.
  /// [size] Required.
  /// [url] Required.
  const GetRepositoryResult({
    required this.createIgnoreAlreadyExists,
    required this.deletionPolicy,
    required this.id,
    required this.name,
    this.project,
    required this.pubsubConfigs,
    required this.size,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': createIgnoreAlreadyExists,
      'deletionPolicy': deletionPolicy,
      'id': id,
      'name': name,
      'project': ?project,
      'pubsubConfigs': pulumi.Input.encodeList<GetRepositoryPubsubConfig, Map<String, dynamic>>(pubsubConfigs, (value) => value.toMap()),
      'size': size,
      'url': url,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] as bool,
      deletionPolicy: map['deletionPolicy'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pubsubConfigs: pulumi.Input.decodeList<GetRepositoryPubsubConfig>(map['pubsubConfigs']!, (value) => GetRepositoryPubsubConfig.fromMap((value as Map).cast<String, dynamic>())),
      size: map['size'] as int,
      url: map['url'] as String,
    );
  }
}
