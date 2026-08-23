// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppIngressTrafficWeight {
  /// The label to apply to the revision as a name prefix for routing traffic.
  final pulumi.Input<String>? label;
  /// This traffic Weight applies to the latest stable Container Revision. At most only one `trafficWeight` block can have the `latestRevision` set to `true`.
  final pulumi.Input<bool>? latestRevision;
  /// The percentage of traffic which should be sent this revision.
  ///
  /// &gt; **Note:** The cumulative values for `weight` must equal 100 exactly and explicitly, no default weights are assumed.
  final pulumi.Input<int> percentage;
  /// The suffix string to which this `trafficWeight` applies.
  ///
  /// &gt; **Note:** If `latestRevision` is `false`, the `revisionSuffix` shall be specified.
  final pulumi.Input<String>? revisionSuffix;

  /// Creates a new [AppIngressTrafficWeight].
  /// [label] The label to apply to the revision as a name prefix for routing traffic.
  /// [latestRevision] This traffic Weight applies to the latest stable Container Revision. At most only one `trafficWeight` block can have the `latestRevision` set to `true`.
  /// [percentage] The percentage of traffic which should be sent this revision.
  /// [revisionSuffix] The suffix string to which this `trafficWeight` applies.
  const AppIngressTrafficWeight({
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
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      percentage: pulumi.Input.fromValue(map['percentage'] as int),
      revisionSuffix: (() { final guardedValue = map['revisionSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
