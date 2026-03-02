// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetAnthosCluster {
  /// Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  final pulumi.Input<String>? membership;

  /// Creates a new [TargetAnthosCluster].
  /// [membership] Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  TargetAnthosCluster({
    this.membership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
    };
  }

  factory TargetAnthosCluster.fromMap(Map<String, dynamic> map) {
    return TargetAnthosCluster(
      membership: map['membership'] == null ? null : (map['membership'] as String).input(),
    );
  }
}

