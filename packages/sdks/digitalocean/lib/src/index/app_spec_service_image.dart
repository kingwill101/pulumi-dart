// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_service_image_deploy_on_push.dart';

class AppSpecServiceImage {
  /// Configures automatically deploying images pushed to DOCR.
  final List<AppSpecServiceImageDeployOnPush>? deployOnPushes;
  /// The image digest. Cannot be specified if `tag` is provided.
  final String? digest;
  /// The registry name. Must be left empty for the `DOCR` registry type. Required for the `DOCKER_HUB` registry type.
  final String? registry;
  /// The credentials required to access a private Docker Hub or GitHub registry, in the following syntax `<username>:<token>`.
  final String? registryCredentials;
  /// The registry type. One of `DOCR` (DigitalOcean container registry) or `DOCKER_HUB`.
  final String registryType;
  /// The repository name.
  final String repository;
  /// The repository tag. Defaults to `latest` if not provided.
  final String? tag;

  /// Creates a new [AppSpecServiceImage].
  /// [deployOnPushes] Configures automatically deploying images pushed to DOCR.
  /// [digest] The image digest. Cannot be specified if `tag` is provided.
  /// [registry] The registry name. Must be left empty for the `DOCR` registry type. Required for the `DOCKER_HUB` registry type.
  /// [registryCredentials] The credentials required to access a private Docker Hub or GitHub registry, in the following syntax `<username>:<token>`.
  /// [registryType] The registry type. One of `DOCR` (DigitalOcean container registry) or `DOCKER_HUB`.
  /// [repository] The repository name.
  /// [tag] The repository tag. Defaults to `latest` if not provided.
  AppSpecServiceImage({
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
      'deployOnPushes': ?deployOnPushes == null ? null : pulumi.Input.encodeList<AppSpecServiceImageDeployOnPush, Map<String, dynamic>>(deployOnPushes!, (value) => value.toMap()),
      'digest': ?digest,
      'registry': ?registry,
      'registryCredentials': ?registryCredentials,
      'registryType': registryType,
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory AppSpecServiceImage.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceImage(
      deployOnPushes: map['deployOnPushes'] == null ? null : pulumi.Input.decodeList<AppSpecServiceImageDeployOnPush>(map['deployOnPushes'], (value) => AppSpecServiceImageDeployOnPush.fromMap((value as Map).cast<String, dynamic>())),
      digest: map['digest'] == null ? null : map['digest'] as String,
      registry: map['registry'] == null ? null : map['registry'] as String,
      registryCredentials: map['registryCredentials'] == null ? null : map['registryCredentials'] as String,
      registryType: map['registryType'] as String,
      repository: map['repository'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

