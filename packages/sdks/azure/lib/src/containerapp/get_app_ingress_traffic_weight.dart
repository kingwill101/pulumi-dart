// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppIngressTrafficWeight {
  /// The label to apply to the revision as a name prefix for routing traffic.
  final pulumi.Input<String> label;
  /// This traffic Weight relates to the latest stable Container Revision.
  final pulumi.Input<bool> latestRevision;
  /// The percentage of traffic which should be sent this revision.
  final pulumi.Input<int> percentage;
  /// The suffix string to which this `traffic_weight` applies.
  final pulumi.Input<String> revisionSuffix;

  /// Creates a new [GetAppIngressTrafficWeight].
  /// [label] The label to apply to the revision as a name prefix for routing traffic.
  /// [latestRevision] This traffic Weight relates to the latest stable Container Revision.
  /// [percentage] The percentage of traffic which should be sent this revision.
  /// [revisionSuffix] The suffix string to which this `traffic_weight` applies.
  GetAppIngressTrafficWeight({
    required this.label,
    required this.latestRevision,
    required this.percentage,
    required this.revisionSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'latestRevision': latestRevision,
      'percentage': percentage,
      'revisionSuffix': revisionSuffix,
    };
  }

  factory GetAppIngressTrafficWeight.fromMap(Map<String, dynamic> map) {
    return GetAppIngressTrafficWeight(
      label: pulumi.Input.fromValue(map['label'] as String),
      latestRevision: pulumi.Input.fromValue(map['latestRevision'] as bool),
      percentage: pulumi.Input.fromValue(map['percentage'] as int),
      revisionSuffix: pulumi.Input.fromValue(map['revisionSuffix'] as String),
    );
  }
}

