// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHostingChannel.
class GetHostingChannelResult {
  final String? channelId;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  final String? expireTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  /// The fully-qualified resource name for the channel, in the format: `sites/{{site_id}}/channels/{{channel_id}}`.
  final String? name;
  final Map<String, String>? pulumiLabels;
  final int? retainedReleaseCount;
  final String? siteId;
  final String? ttl;

  /// Creates a new [GetHostingChannelResult].
  /// [channelId] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [expireTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] The fully-qualified resource name for the channel, in the format: `sites/{{site_id}}/channels/{{channel_id}}`.
  /// [pulumiLabels] Optional.
  /// [retainedReleaseCount] Optional.
  /// [siteId] Optional.
  /// [ttl] Optional.
  const GetHostingChannelResult({
    this.channelId,
    this.deletionPolicy,
    this.effectiveLabels,
    this.expireTime,
    this.id,
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
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'expireTime': ?expireTime,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'pulumiLabels': ?pulumiLabels,
      'retainedReleaseCount': ?retainedReleaseCount,
      'siteId': ?siteId,
      'ttl': ?ttl,
    };
  }

  factory GetHostingChannelResult.fromMap(Map<String, dynamic> map) {
    return GetHostingChannelResult(
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      retainedReleaseCount: (() { final guardedValue = map['retainedReleaseCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
