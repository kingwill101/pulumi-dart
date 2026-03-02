// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information specifying an Anthos Cluster.
class AnthosCluster {
  /// Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  final pulumi.Input<String>? membership;

  /// Creates a new [AnthosCluster].
  /// [membership] Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  AnthosCluster({
    this.membership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
    };
  }

  factory AnthosCluster.fromMap(Map<String, dynamic> map) {
    return AnthosCluster(
      membership: map['membership'] == null ? null : (map['membership'] as String).input(),
    );
  }
}

