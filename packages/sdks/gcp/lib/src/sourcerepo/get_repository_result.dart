// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_pubsub_config.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  final bool? createIgnoreAlreadyExists;
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  final List<GetRepositoryPubsubConfig>? pubsubConfigs;
  final int? size;
  final String? url;

  /// Creates a new [GetRepositoryResult].
  /// [createIgnoreAlreadyExists] Optional.
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [pubsubConfigs] Optional.
  /// [size] Optional.
  /// [url] Optional.
  const GetRepositoryResult({
    this.createIgnoreAlreadyExists,
    this.deletionPolicy,
    this.id,
    this.name,
    this.project,
    this.pubsubConfigs,
    this.size,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'pubsubConfigs': ?(() { final guardedValue = pubsubConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryPubsubConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'size': ?size,
      'url': ?url,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      createIgnoreAlreadyExists: (() { final guardedValue = map['createIgnoreAlreadyExists']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pubsubConfigs: (() { final guardedValue = map['pubsubConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryPubsubConfig>(guardedValue, (value) => GetRepositoryPubsubConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
