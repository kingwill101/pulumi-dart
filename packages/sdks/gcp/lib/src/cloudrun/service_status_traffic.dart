// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceStatusTraffic {
  /// LatestRevision may be optionally provided to indicate that the latest ready
  /// Revision of the Configuration should be used for this traffic target. When
  /// provided LatestRevision must be true if RevisionName is empty; it must be
  /// false when RevisionName is non-empty.
  final pulumi.Input<bool>? latestRevision;
  /// Percent specifies percent of the traffic to this Revision or Configuration.
  final pulumi.Input<int>? percent;
  /// RevisionName of a specific revision to which to send this portion of traffic.
  final pulumi.Input<String>? revisionName;
  /// Tag is optionally used to expose a dedicated url for referencing this target exclusively.
  final pulumi.Input<String>? tag;
  /// (Output)
  /// URL displays the URL for accessing tagged traffic targets. URL is displayed in status,
  /// and is disallowed on spec. URL must contain a scheme (e.g. http://) and a hostname,
  /// but may not contain anything else (e.g. basic auth, url path, etc.)
  final pulumi.Input<String>? url;

  /// Creates a new [ServiceStatusTraffic].
  /// [latestRevision] LatestRevision may be optionally provided to indicate that the latest ready
  /// [percent] Percent specifies percent of the traffic to this Revision or Configuration.
  /// [revisionName] RevisionName of a specific revision to which to send this portion of traffic.
  /// [tag] Tag is optionally used to expose a dedicated url for referencing this target exclusively.
  /// [url] (Output)
  const ServiceStatusTraffic({
    this.latestRevision,
    this.percent,
    this.revisionName,
    this.tag,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestRevision': ?latestRevision,
      'percent': ?percent,
      'revisionName': ?revisionName,
      'tag': ?tag,
      'url': ?url,
    };
  }

  factory ServiceStatusTraffic.fromMap(Map<String, dynamic> map) {
    return ServiceStatusTraffic(
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revisionName: (() { final guardedValue = map['revisionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

