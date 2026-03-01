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
    required pulumi.Output<String> channelId,
    pulumi.Output<String>? expireTime,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<int>? retainedReleaseCount,
    required pulumi.Output<String> siteId,
    pulumi.Output<String>? ttl,
  }) :
      channelId = pulumi.Input.asInput<String>(channelId),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      retainedReleaseCount = pulumi.Input.asOptionalInput<int>(retainedReleaseCount),
      siteId = pulumi.Input.asInput<String>(siteId),
      ttl = pulumi.Input.asOptionalInput<String>(ttl);

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
      channelId: pulumi.Output.create<String>(map['channelId'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      retainedReleaseCount: map['retainedReleaseCount'] == null ? null : pulumi.Output.create<int>(map['retainedReleaseCount'] as int),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
    );
  }
}

