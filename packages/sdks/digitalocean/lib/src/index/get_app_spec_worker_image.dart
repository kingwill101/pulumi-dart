// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_worker_image_deploy_on_push.dart';

class GetAppSpecWorkerImage {
  /// Whether to automatically deploy new commits made to the repo.
  final pulumi.Input<List<GetAppSpecWorkerImageDeployOnPush>> deployOnPushes;
  /// The image digest. Cannot be specified if `tag` is provided.
  final pulumi.Input<String>? digest;
  /// The registry name. Must be left empty for the `DOCR` registry type. Required for the `DOCKER_HUB` registry type.
  final pulumi.Input<String>? registry;
  /// Access credentials for third-party registries
  final pulumi.Input<String>? registryCredentials;
  /// The registry type. One of `DOCR` (DigitalOcean container registry) or `DOCKER_HUB`.
  final pulumi.Input<String> registryType;
  /// The repository name.
  final pulumi.Input<String> repository;
  /// The repository tag. Defaults to `latest` if not provided.
  final pulumi.Input<String>? tag;

  /// Creates a new [GetAppSpecWorkerImage].
  /// [deployOnPushes] Whether to automatically deploy new commits made to the repo.
  /// [digest] The image digest. Cannot be specified if `tag` is provided.
  /// [registry] The registry name. Must be left empty for the `DOCR` registry type. Required for the `DOCKER_HUB` registry type.
  /// [registryCredentials] Access credentials for third-party registries
  /// [registryType] The registry type. One of `DOCR` (DigitalOcean container registry) or `DOCKER_HUB`.
  /// [repository] The repository name.
  /// [tag] The repository tag. Defaults to `latest` if not provided.
  const GetAppSpecWorkerImage({
    required this.deployOnPushes,
    this.digest,
    this.registry,
    this.registryCredentials,
    required this.registryType,
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployOnPushes': pulumi.Input.mapInputValue<List<GetAppSpecWorkerImageDeployOnPush>, List<Map<String, dynamic>>>(deployOnPushes, (value) => pulumi.Input.encodeList<GetAppSpecWorkerImageDeployOnPush, Map<String, dynamic>>(value, (value) => value.toMap())),
      'digest': ?digest,
      'registry': ?registry,
      'registryCredentials': ?registryCredentials,
      'registryType': registryType,
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory GetAppSpecWorkerImage.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerImage(
      deployOnPushes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppSpecWorkerImageDeployOnPush>(map['deployOnPushes']!, (value) => GetAppSpecWorkerImageDeployOnPush.fromMap((value as Map).cast<String, dynamic>()))),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registry: (() { final guardedValue = map['registry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryCredentials: (() { final guardedValue = map['registryCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryType: pulumi.Input.fromValue(map['registryType'] as String),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
