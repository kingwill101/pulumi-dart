// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_endpoint_gke_cluster.dart';

class MembershipEndpoint {
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  final pulumi.Input<MembershipEndpointGkeCluster>? gkeCluster;

  /// Creates a new [MembershipEndpoint].
  /// [gkeCluster] If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  MembershipEndpoint({
    this.gkeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeCluster': ?pulumi.Input.mapOptionalInputValue<MembershipEndpointGkeCluster, Map<String, dynamic>>(gkeCluster, (value) => value.toMap()),
    };
  }

  factory MembershipEndpoint.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint(
      gkeCluster: map['gkeCluster'] == null ? null : (MembershipEndpointGkeCluster.fromMap((map['gkeCluster']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

