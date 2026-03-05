// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_channel_args_doc}
/// The set of arguments for Channel.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_channel_args_doc}
class ChannelArgs {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  final pulumi.Input<String> channelId;
  /// The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  final pulumi.Input<String>? expireTime;
  /// Text labels used for extra metadata and/or filtering.
  final pulumi.Input<Map<String, String>>? labels;
  /// The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final pulumi.Input<int>? retainedReleaseCount;
  final pulumi.Input<String> siteId;
  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  final pulumi.Input<String>? ttl;

  /// Creates a new [ChannelArgs].
  /// [channelId] Required. Immutable. A unique ID within the site that identifies the channel.
  /// [expireTime] The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  /// [labels] Text labels used for extra metadata and/or filtering.
  /// [name] The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  /// [project] Optional.
  /// [retainedReleaseCount] The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  /// [siteId] Required.
  /// [ttl] Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  ChannelArgs({
    required this.channelId,
    this.expireTime,
    this.labels,
    this.name,
    this.project,
    this.retainedReleaseCount,
    required this.siteId,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'retainedReleaseCount': ?retainedReleaseCount,
      'siteId': siteId,
      'ttl': ?ttl,
    };
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      channelId: pulumi.Input.fromValue(map['channelId'] as String),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retainedReleaseCount: (() { final guardedValue = map['retainedReleaseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

