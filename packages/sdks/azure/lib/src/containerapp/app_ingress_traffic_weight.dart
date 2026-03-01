// ignore_for_file: unused_element, unnecessary_cast


class AppIngressTrafficWeight {
  /// The label to apply to the revision as a name prefix for routing traffic.
  final String? label;
  /// This traffic Weight applies to the latest stable Container Revision. At most only one `traffic_weight` block can have the `latest_revision` set to `true`.
  final bool? latestRevision;
  /// The percentage of traffic which should be sent this revision.
  ///
  /// > **Note:** The cumulative values for `weight` must equal 100 exactly and explicitly, no default weights are assumed.
  final int percentage;
  /// The suffix string to which this `traffic_weight` applies.
  ///
  /// > **Note:** If `latest_revision` is `false`, the `revision_suffix` shall be specified.
  final String? revisionSuffix;

  /// Creates a new [AppIngressTrafficWeight].
  /// [label] The label to apply to the revision as a name prefix for routing traffic.
  /// [latestRevision] This traffic Weight applies to the latest stable Container Revision. At most only one `traffic_weight` block can have the `latest_revision` set to `true`.
  /// [percentage] The percentage of traffic which should be sent this revision.
  /// [revisionSuffix] The suffix string to which this `traffic_weight` applies.
  AppIngressTrafficWeight({
    this.label,
    this.latestRevision,
    required this.percentage,
    this.revisionSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'latestRevision': ?latestRevision,
      'percentage': percentage,
      'revisionSuffix': ?revisionSuffix,
    };
  }

  factory AppIngressTrafficWeight.fromMap(Map<String, dynamic> map) {
    return AppIngressTrafficWeight(
      label: map['label'] == null ? null : map['label'] as String,
      latestRevision: map['latestRevision'] == null ? null : map['latestRevision'] as bool,
      percentage: map['percentage'] as int,
      revisionSuffix: map['revisionSuffix'] == null ? null : map['revisionSuffix'] as String,
    );
  }
}

