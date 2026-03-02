// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_worker_image_deploy_on_push.dart';

class AppSpecWorkerImage {
  /// Configures automatically deploying images pushed to DOCR.
  final pulumi.Input<List<AppSpecWorkerImageDeployOnPush>>? deployOnPushes;
  /// The image digest. Cannot be specified if `tag` is provided.
  final pulumi.Input<String>? digest;
  /// The registry name. Must be left empty for the `DOCR` registry type. Required for the `DOCKER_HUB` registry type.
  final pulumi.Input<String>? registry;
  /// The credentials required to access a private Docker Hub or GitHub registry, in the following syntax `<username>:<token>`.
  final pulumi.Input<String>? registryCredentials;
  /// The registry type. One of `DOCR` (DigitalOcean container registry) or `DOCKER_HUB`.
  final pulumi.Input<String> registryType;
  /// The repository name.
  final pulumi.Input<String> repository;
  /// The repository tag. Defaults to `latest` if not provided.
  final pulumi.Input<String>? tag;

  /// Creates a new [AppSpecWorkerImage].
  /// [deployOnPushes] Configures automatically deploying images pushed to DOCR.
  /// [digest] The image digest. Cannot be specified if `tag` is provided.
  /// [registry] The registry name. Must be left empty for the `DOCR` registry type. Required for the `DOCKER_HUB` registry type.
  /// [registryCredentials] The credentials required to access a private Docker Hub or GitHub registry, in the following syntax `<username>:<token>`.
  /// [registryType] The registry type. One of `DOCR` (DigitalOcean container registry) or `DOCKER_HUB`.
  /// [repository] The repository name.
  /// [tag] The repository tag. Defaults to `latest` if not provided.
  AppSpecWorkerImage({
    this.deployOnPushes,
    this.digest,
    this.registry,
    this.registryCredentials,
    required this.registryType,
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployOnPushes': ?pulumi.Input.mapOptionalInputValue<List<AppSpecWorkerImageDeployOnPush>, List<Map<String, dynamic>>>(deployOnPushes, (value) => pulumi.Input.encodeList<AppSpecWorkerImageDeployOnPush, Map<String, dynamic>>(value, (value) => value.toMap())),
      'digest': ?digest,
      'registry': ?registry,
      'registryCredentials': ?registryCredentials,
      'registryType': registryType,
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory AppSpecWorkerImage.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerImage(
      deployOnPushes: map['deployOnPushes'] == null ? null : (pulumi.Input.decodeList<AppSpecWorkerImageDeployOnPush>(map['deployOnPushes']!, (value) => AppSpecWorkerImageDeployOnPush.fromMap((value as Map).cast<String, dynamic>()))).input(),
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      registry: map['registry'] == null ? null : (map['registry']! as String).input(),
      registryCredentials: map['registryCredentials'] == null ? null : (map['registryCredentials']! as String).input(),
      registryType: (map['registryType'] as String).input(),
      repository: (map['repository'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

