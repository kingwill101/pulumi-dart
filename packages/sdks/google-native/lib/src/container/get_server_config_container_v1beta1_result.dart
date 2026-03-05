// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_channel_config_response_container_v1beta1.dart';

/// Result data returned by getServerConfig.
class GetServerConfigContainerV1beta1Result {
  /// List of release channel configurations.
  final List<ReleaseChannelConfigResponseContainerV1beta1> channels;
  /// Version of Kubernetes the service deploys by default.
  final String defaultClusterVersion;
  /// Default image type.
  final String defaultImageType;
  /// List of valid image types.
  final List<String> validImageTypes;
  /// List of valid master versions, in descending order.
  final List<String> validMasterVersions;
  /// List of valid node upgrade target versions, in descending order.
  final List<String> validNodeVersions;
  /// Maps of Kubernetes version and supported Windows server versions.
  final Map<String, String> windowsVersionMaps;

  /// Creates a new [GetServerConfigContainerV1beta1Result].
  /// [channels] List of release channel configurations.
  /// [defaultClusterVersion] Version of Kubernetes the service deploys by default.
  /// [defaultImageType] Default image type.
  /// [validImageTypes] List of valid image types.
  /// [validMasterVersions] List of valid master versions, in descending order.
  /// [validNodeVersions] List of valid node upgrade target versions, in descending order.
  /// [windowsVersionMaps] Maps of Kubernetes version and supported Windows server versions.
  GetServerConfigContainerV1beta1Result({
    required this.channels,
    required this.defaultClusterVersion,
    required this.defaultImageType,
    required this.validImageTypes,
    required this.validMasterVersions,
    required this.validNodeVersions,
    required this.windowsVersionMaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': pulumi.Input.encodeList<ReleaseChannelConfigResponseContainerV1beta1, Map<String, dynamic>>(channels, (value) => value.toMap()),
      'defaultClusterVersion': defaultClusterVersion,
      'defaultImageType': defaultImageType,
      'validImageTypes': validImageTypes,
      'validMasterVersions': validMasterVersions,
      'validNodeVersions': validNodeVersions,
      'windowsVersionMaps': windowsVersionMaps,
    };
  }

  factory GetServerConfigContainerV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetServerConfigContainerV1beta1Result(
      channels: pulumi.Input.decodeList<ReleaseChannelConfigResponseContainerV1beta1>(map['channels']!, (value) => ReleaseChannelConfigResponseContainerV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      defaultClusterVersion: map['defaultClusterVersion'] as String,
      defaultImageType: map['defaultImageType'] as String,
      validImageTypes: (map['validImageTypes'] as List).cast<String>(),
      validMasterVersions: (map['validMasterVersions'] as List).cast<String>(),
      validNodeVersions: (map['validNodeVersions'] as List).cast<String>(),
      windowsVersionMaps: (map['windowsVersionMaps'] as Map).cast<String, String>(),
    );
  }
}

