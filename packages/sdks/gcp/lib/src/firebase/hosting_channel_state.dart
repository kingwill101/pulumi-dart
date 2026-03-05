// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostingChannel resources.
class HostingChannelState {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  final pulumi.Input<String>? channelId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The time at which the channel will be automatically deleted. If null, the channel
  /// will not be automatically deleted. This field is present in the output whether it's
  /// set directly or via the `ttl` field.
  final pulumi.Input<String>? expireTime;
  /// Text labels used for extra metadata and/or filtering
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The fully-qualified resource name for the channel, in the format:
  /// sites/SITE_ID/channels/CHANNEL_ID
  final pulumi.Input<String>? name;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The number of previous releases to retain on the channel for rollback or other
  /// purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final pulumi.Input<int>? retainedReleaseCount;
  /// Required. The ID of the site in which to create this channel.
  final pulumi.Input<String>? siteId;
  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided
  /// duration past the time of the request. A duration in seconds with up to nine fractional
  /// digits, terminated by 's'. Example: "86400s" (one day).
  final pulumi.Input<String>? ttl;

  /// Creates a new [HostingChannelState].
  /// [channelId] Required. Immutable. A unique ID within the site that identifies the channel.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [expireTime] The time at which the channel will be automatically deleted. If null, the channel
  /// [labels] Text labels used for extra metadata and/or filtering
  /// [name] The fully-qualified resource name for the channel, in the format:
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [retainedReleaseCount] The number of previous releases to retain on the channel for rollback or other
  /// [siteId] Required. The ID of the site in which to create this channel.
  /// [ttl] Input only. A time-to-live for this channel. Sets `expire_time` to the provided
  HostingChannelState({
    this.channelId,
    this.effectiveLabels,
    this.expireTime,
    this.labels,
    this.name,
    this.pulumiLabels,
    this.retainedReleaseCount,
    this.siteId,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': ?channelId,
      'effectiveLabels': ?effectiveLabels,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'name': ?name,
      'pulumiLabels': ?pulumiLabels,
      'retainedReleaseCount': ?retainedReleaseCount,
      'siteId': ?siteId,
      'ttl': ?ttl,
    };
  }

  factory HostingChannelState.fromMap(Map<String, dynamic> map) {
    return HostingChannelState(
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      retainedReleaseCount: (() { final guardedValue = map['retainedReleaseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

