// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_channel_config_response.dart';

/// Result data returned by getServerConfig.
class GetServerConfigResult {
  /// List of release channel configurations.
  final List<ReleaseChannelConfigResponse> channels;
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

  /// Creates a new [GetServerConfigResult].
  /// [channels] List of release channel configurations.
  /// [defaultClusterVersion] Version of Kubernetes the service deploys by default.
  /// [defaultImageType] Default image type.
  /// [validImageTypes] List of valid image types.
  /// [validMasterVersions] List of valid master versions, in descending order.
  /// [validNodeVersions] List of valid node upgrade target versions, in descending order.
  GetServerConfigResult({
    required this.channels,
    required this.defaultClusterVersion,
    required this.defaultImageType,
    required this.validImageTypes,
    required this.validMasterVersions,
    required this.validNodeVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': pulumi.Input.encodeList<ReleaseChannelConfigResponse, Map<String, dynamic>>(channels, (value) => value.toMap()),
      'defaultClusterVersion': defaultClusterVersion,
      'defaultImageType': defaultImageType,
      'validImageTypes': validImageTypes,
      'validMasterVersions': validMasterVersions,
      'validNodeVersions': validNodeVersions,
    };
  }

  factory GetServerConfigResult.fromMap(Map<String, dynamic> map) {
    return GetServerConfigResult(
      channels: pulumi.Input.decodeList<ReleaseChannelConfigResponse>(map['channels']!, (value) => ReleaseChannelConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultClusterVersion: map['defaultClusterVersion'] as String,
      defaultImageType: map['defaultImageType'] as String,
      validImageTypes: (map['validImageTypes'] as List).cast<String>(),
      validMasterVersions: (map['validMasterVersions'] as List).cast<String>(),
      validNodeVersions: (map['validNodeVersions'] as List).cast<String>(),
    );
  }
}

