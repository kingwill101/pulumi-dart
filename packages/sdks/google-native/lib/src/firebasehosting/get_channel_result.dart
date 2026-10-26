// ignore_for_file: unused_element, unnecessary_cast

import 'release_response.dart';

/// Result data returned by getChannel.
class GetChannelResult {
  /// The time at which the channel was created.
  final String? createTime;
  /// The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  final String? expireTime;
  /// Text labels used for extra metadata and/or filtering.
  final Map<String, String>? labels;
  /// The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  final String? name;
  /// The current release for the channel, if any.
  final ReleaseResponse? release;
  /// The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  final int? retainedReleaseCount;
  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  final String? ttl;
  /// The time at which the channel was last updated.
  final String? updateTime;
  /// The URL at which the content of this channel's current release can be viewed. This URL is a Firebase-provided subdomain of `web.app`. The content of this channel's current release can also be viewed at the Firebase-provided subdomain of `firebaseapp.com`. If this channel is the `live` channel for the Hosting site, then the content of this channel's current release can also be viewed at any connected custom domains.
  final String? url;

  /// Creates a new [GetChannelResult].
  /// [createTime] The time at which the channel was created.
  /// [expireTime] The time at which the channel will be automatically deleted. If null, the channel will not be automatically deleted. This field is present in the output whether it's set directly or via the `ttl` field.
  /// [labels] Text labels used for extra metadata and/or filtering.
  /// [name] The fully-qualified resource name for the channel, in the format: sites/ SITE_ID/channels/CHANNEL_ID
  /// [release] The current release for the channel, if any.
  /// [retainedReleaseCount] The number of previous releases to retain on the channel for rollback or other purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  /// [ttl] Input only. A time-to-live for this channel. Sets `expire_time` to the provided duration past the time of the request.
  /// [updateTime] The time at which the channel was last updated.
  /// [url] The URL at which the content of this channel's current release can be viewed. This URL is a Firebase-provided subdomain of `web.app`. The content of this channel's current release can also be viewed at the Firebase-provided subdomain of `firebaseapp.com`. If this channel is the `live` channel for the Hosting site, then the content of this channel's current release can also be viewed at any connected custom domains.
  const GetChannelResult({
    this.createTime,
    this.expireTime,
    this.labels,
    this.name,
    this.release,
    this.retainedReleaseCount,
    this.ttl,
    this.updateTime,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'name': ?name,
      'release': ?release?.toMap(),
      'retainedReleaseCount': ?retainedReleaseCount,
      'ttl': ?ttl,
      'updateTime': ?updateTime,
      'url': ?url,
    };
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return ReleaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      retainedReleaseCount: (() { final guardedValue = map['retainedReleaseCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
