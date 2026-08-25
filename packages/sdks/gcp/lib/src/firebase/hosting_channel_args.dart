// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_hosting_channel_hosting_channel_args_doc}
/// The set of arguments for HostingChannel.
/// {@endtemplate}
/// {@macro pulumi_firebase_hosting_channel_hosting_channel_args_doc}
class HostingChannelArgs {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  final pulumi.Input<String> channelId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The time at which the channel will be automatically deleted. If null, the channel
  /// will not be automatically deleted. This field is present in the output whether it's
  /// set directly or via the `ttl` field.
  final pulumi.Input<String?>? expireTime;
  /// Text labels used for extra metadata and/or filtering
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The number of previous releases to retain on the channel for rollback or other
  /// purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final pulumi.Input<int?>? retainedReleaseCount;
  /// Required. The ID of the site in which to create this channel.
  final pulumi.Input<String> siteId;
  /// Input only. A time-to-live for this channel. Sets `expireTime` to the provided
  /// duration past the time of the request. A duration in seconds with up to nine fractional
  /// digits, terminated by 's'. Example: "86400s" (one day).
  final pulumi.Input<String?>? ttl;

  /// Creates a new [HostingChannelArgs].
  /// [channelId] Required. Immutable. A unique ID within the site that identifies the channel.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [expireTime] The time at which the channel will be automatically deleted. If null, the channel
  /// [labels] Text labels used for extra metadata and/or filtering
  /// [retainedReleaseCount] The number of previous releases to retain on the channel for rollback or other
  /// [siteId] Required. The ID of the site in which to create this channel.
  /// [ttl] Input only. A time-to-live for this channel. Sets `expireTime` to the provided
  const HostingChannelArgs({
    required this.channelId,
    this.deletionPolicy,
    this.expireTime,
    this.labels,
    this.retainedReleaseCount,
    required this.siteId,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'deletionPolicy': ?deletionPolicy,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'retainedReleaseCount': ?retainedReleaseCount,
      'siteId': siteId,
      'ttl': ?ttl,
    };
  }

  factory HostingChannelArgs.fromMap(Map<String, dynamic> map) {
    return HostingChannelArgs(
      channelId: pulumi.Input.fromValue(map['channelId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      retainedReleaseCount: (() { final guardedValue = map['retainedReleaseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
