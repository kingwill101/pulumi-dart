// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_channel_config_response.dart';

/// Result data returned by getServerConfig.
class GetServerConfigResult {
  /// List of release channel configurations.
  final List<ReleaseChannelConfigResponse>? channels;
  /// Version of Kubernetes the service deploys by default.
  final String? defaultClusterVersion;
  /// Default image type.
  final String? defaultImageType;
  /// List of valid image types.
  final List<String>? validImageTypes;
  /// List of valid master versions, in descending order.
  final List<String>? validMasterVersions;
  /// List of valid node upgrade target versions, in descending order.
  final List<String>? validNodeVersions;

  /// Creates a new [GetServerConfigResult].
  /// [channels] List of release channel configurations.
  /// [defaultClusterVersion] Version of Kubernetes the service deploys by default.
  /// [defaultImageType] Default image type.
  /// [validImageTypes] List of valid image types.
  /// [validMasterVersions] List of valid master versions, in descending order.
  /// [validNodeVersions] List of valid node upgrade target versions, in descending order.
  const GetServerConfigResult({
    this.channels,
    this.defaultClusterVersion,
    this.defaultImageType,
    this.validImageTypes,
    this.validMasterVersions,
    this.validNodeVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': ?(() { final guardedValue = channels; if (guardedValue == null) return null; return pulumi.Input.encodeList<ReleaseChannelConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultClusterVersion': ?defaultClusterVersion,
      'defaultImageType': ?defaultImageType,
      'validImageTypes': ?validImageTypes,
      'validMasterVersions': ?validMasterVersions,
      'validNodeVersions': ?validNodeVersions,
    };
  }

  factory GetServerConfigResult.fromMap(Map<String, dynamic> map) {
    return GetServerConfigResult(
      channels: (() { final guardedValue = map['channels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReleaseChannelConfigResponse>(guardedValue, (value) => ReleaseChannelConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultClusterVersion: (() { final guardedValue = map['defaultClusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultImageType: (() { final guardedValue = map['defaultImageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validImageTypes: (() { final guardedValue = map['validImageTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      validMasterVersions: (() { final guardedValue = map['validMasterVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      validNodeVersions: (() { final guardedValue = map['validNodeVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
