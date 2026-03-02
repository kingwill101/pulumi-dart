// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TrafficTarget holds a single entry of the routing table for a Route.
class TrafficTargetResponse {
  /// [Deprecated] Not supported in Cloud Run. It must be empty.
  final pulumi.Input<String> configurationName;
  /// Uses the "status.latestReadyRevisionName" of the Service to determine the traffic target. When it changes, traffic will automatically migrate from the prior "latest ready" revision to the new one. This field must be false if RevisionName is set. This field defaults to true otherwise. If the field is set to true on Status, this means that the Revision was resolved from the Service's latest ready revision.
  final pulumi.Input<bool> latestRevision;
  /// Percent specifies percent of the traffic to this Revision or Configuration. This defaults to zero if unspecified.
  final pulumi.Input<int> percent;
  /// Points this traffic target to a specific Revision. This field is mutually exclusive with latest_revision.
  final pulumi.Input<String> revisionName;
  /// Tag is used to expose a dedicated url for referencing this target exclusively.
  final pulumi.Input<String> tag;
  /// URL displays the URL for accessing tagged traffic targets. URL is displayed in status, and is disallowed on spec. URL must contain a scheme (e.g. https://) and a hostname, but may not contain anything else (e.g. basic auth, url path, etc.)
  final pulumi.Input<String> url;

  /// Creates a new [TrafficTargetResponse].
  /// [configurationName] [Deprecated] Not supported in Cloud Run. It must be empty.
  /// [latestRevision] Uses the "status.latestReadyRevisionName" of the Service to determine the traffic target. When it changes, traffic will automatically migrate from the prior "latest ready" revision to the new one. This field must be false if RevisionName is set. This field defaults to true otherwise. If the field is set to true on Status, this means that the Revision was resolved from the Service's latest ready revision.
  /// [percent] Percent specifies percent of the traffic to this Revision or Configuration. This defaults to zero if unspecified.
  /// [revisionName] Points this traffic target to a specific Revision. This field is mutually exclusive with latest_revision.
  /// [tag] Tag is used to expose a dedicated url for referencing this target exclusively.
  /// [url] URL displays the URL for accessing tagged traffic targets. URL is displayed in status, and is disallowed on spec. URL must contain a scheme (e.g. https://) and a hostname, but may not contain anything else (e.g. basic auth, url path, etc.)
  TrafficTargetResponse({
    required this.configurationName,
    required this.latestRevision,
    required this.percent,
    required this.revisionName,
    required this.tag,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'latestRevision': latestRevision,
      'percent': percent,
      'revisionName': revisionName,
      'tag': tag,
      'url': url,
    };
  }

  factory TrafficTargetResponse.fromMap(Map<String, dynamic> map) {
    return TrafficTargetResponse(
      configurationName: (map['configurationName'] as String).input(),
      latestRevision: (map['latestRevision'] as bool).input(),
      percent: (map['percent'] as int).input(),
      revisionName: (map['revisionName'] as String).input(),
      tag: (map['tag'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

