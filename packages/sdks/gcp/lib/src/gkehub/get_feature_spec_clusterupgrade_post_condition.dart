// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureSpecClusterupgradePostCondition {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.
  final pulumi.Input<String> soaking;

  /// Creates a new [GetFeatureSpecClusterupgradePostCondition].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.
  GetFeatureSpecClusterupgradePostCondition({required this.soaking});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'soaking': soaking};
  }

  factory GetFeatureSpecClusterupgradePostCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureSpecClusterupgradePostCondition(
      soaking: pulumi.Input.fromValue(map['soaking'] as String),
    );
  }
}
