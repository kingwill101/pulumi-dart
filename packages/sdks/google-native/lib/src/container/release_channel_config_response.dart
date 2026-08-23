// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ReleaseChannelConfig exposes configuration for a release channel.
class ReleaseChannelConfigResponse {
  /// The release channel this configuration applies to.
  final pulumi.Input<String> channel;
  /// The default version for newly created clusters on the channel.
  final pulumi.Input<String> defaultVersion;
  /// List of valid versions for the channel.
  final pulumi.Input<List<String>> validVersions;

  /// Creates a new [ReleaseChannelConfigResponse].
  /// [channel] The release channel this configuration applies to.
  /// [defaultVersion] The default version for newly created clusters on the channel.
  /// [validVersions] List of valid versions for the channel.
  const ReleaseChannelConfigResponse({
    required this.channel,
    required this.defaultVersion,
    required this.validVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'defaultVersion': defaultVersion,
      'validVersions': validVersions,
    };
  }

  factory ReleaseChannelConfigResponse.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelConfigResponse(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      defaultVersion: pulumi.Input.fromValue(map['defaultVersion'] as String),
      validVersions: pulumi.Input.fromValue((map['validVersions'] as List).cast<String>()),
    );
  }
}
