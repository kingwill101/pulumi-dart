// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_version_response.dart';

/// ReleaseChannelConfig exposes configuration for a release channel.
class ReleaseChannelConfigResponseContainerV1beta1 {
  /// Deprecated. This field has been deprecated and replaced with the valid_versions field.
  final List<AvailableVersionResponse> availableVersions;
  /// The release channel this configuration applies to.
  final String channel;
  /// The default version for newly created clusters on the channel.
  final String defaultVersion;
  /// List of valid versions for the channel.
  final List<String> validVersions;

  /// Creates a new [ReleaseChannelConfigResponseContainerV1beta1].
  /// [availableVersions] Deprecated. This field has been deprecated and replaced with the valid_versions field.
  /// [channel] The release channel this configuration applies to.
  /// [defaultVersion] The default version for newly created clusters on the channel.
  /// [validVersions] List of valid versions for the channel.
  ReleaseChannelConfigResponseContainerV1beta1({
    required this.availableVersions,
    required this.channel,
    required this.defaultVersion,
    required this.validVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableVersions': pulumi.Input.encodeList<AvailableVersionResponse, Map<String, dynamic>>(availableVersions, (value) => value.toMap()),
      'channel': channel,
      'defaultVersion': defaultVersion,
      'validVersions': validVersions,
    };
  }

  factory ReleaseChannelConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelConfigResponseContainerV1beta1(
      availableVersions: pulumi.Input.decodeList<AvailableVersionResponse>(map['availableVersions'], (value) => AvailableVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
      channel: map['channel'] as String,
      defaultVersion: map['defaultVersion'] as String,
      validVersions: (map['validVersions'] as List).cast<String>(),
    );
  }
}

