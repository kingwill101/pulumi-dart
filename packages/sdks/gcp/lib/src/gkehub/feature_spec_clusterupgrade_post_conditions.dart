// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSpecClusterupgradePostConditions {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.
  final pulumi.Input<String> soaking;

  /// Creates a new [FeatureSpecClusterupgradePostConditions].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.
  FeatureSpecClusterupgradePostConditions({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'soaking': soaking,
    };
  }

  factory FeatureSpecClusterupgradePostConditions.fromMap(Map<String, dynamic> map) {
    return FeatureSpecClusterupgradePostConditions(
      soaking: pulumi.Input.fromValue(map['soaking'] as String),
    );
  }
}

