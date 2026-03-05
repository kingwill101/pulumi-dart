// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_membership_endpoint_gke_cluster.dart';

class GetMembershipEndpoint {
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  final pulumi.Input<List<GetMembershipEndpointGkeCluster>> gkeClusters;

  /// Creates a new [GetMembershipEndpoint].
  /// [gkeClusters] If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  GetMembershipEndpoint({
    required this.gkeClusters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusters': pulumi.Input.mapInputValue<List<GetMembershipEndpointGkeCluster>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<GetMembershipEndpointGkeCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMembershipEndpoint.fromMap(Map<String, dynamic> map) {
    return GetMembershipEndpoint(
      gkeClusters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMembershipEndpointGkeCluster>(map['gkeClusters']!, (value) => GetMembershipEndpointGkeCluster.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

