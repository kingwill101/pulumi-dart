// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_image_deploy_on_push.dart';

class GetAppSpecServiceImage {
  /// Whether to automatically deploy new commits made to the repo.
  final pulumi.Input<List<GetAppSpecServiceImageDeployOnPush>> deployOnPushes;
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

  /// Creates a new [GetAppSpecServiceImage].
  /// [deployOnPushes] Whether to automatically deploy new commits made to the repo.
  /// [digest] The image digest. Cannot be specified if `tag` is provided.
  /// [registry] The registry name. Must be left empty for the `DOCR` registry type. Required for the `DOCKER_HUB` registry type.
  /// [registryCredentials] Access credentials for third-party registries
  /// [registryType] The registry type. One of `DOCR` (DigitalOcean container registry) or `DOCKER_HUB`.
  /// [repository] The repository name.
  /// [tag] The repository tag. Defaults to `latest` if not provided.
  GetAppSpecServiceImage({
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
      'deployOnPushes': pulumi.Input.mapInputValue<List<GetAppSpecServiceImageDeployOnPush>, List<Map<String, dynamic>>>(deployOnPushes, (value) => pulumi.Input.encodeList<GetAppSpecServiceImageDeployOnPush, Map<String, dynamic>>(value, (value) => value.toMap())),
      'digest': ?digest,
      'registry': ?registry,
      'registryCredentials': ?registryCredentials,
      'registryType': registryType,
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory GetAppSpecServiceImage.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceImage(
      deployOnPushes: (pulumi.Input.decodeList<GetAppSpecServiceImageDeployOnPush>(map['deployOnPushes'], (value) => GetAppSpecServiceImageDeployOnPush.fromMap((value as Map).cast<String, dynamic>()))).input(),
      digest: map['digest'] == null ? null : (map['digest'] as String).input(),
      registry: map['registry'] == null ? null : (map['registry'] as String).input(),
      registryCredentials: map['registryCredentials'] == null ? null : (map['registryCredentials'] as String).input(),
      registryType: (map['registryType'] as String).input(),
      repository: (map['repository'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag'] as String).input(),
    );
  }
}

