// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterPodAutoscaling {
  /// HPA Profile is used to configure the Horizontal Pod Autoscaler (HPA) profile for the cluster.
  /// Available options include:
  /// - NONE: Customers explicitly opt-out of HPA profiles.
  /// - PERFORMANCE: PERFORMANCE is used when customers opt-in to the performance HPA profile. In this profile we support a higher number of HPAs per cluster and faster metrics collection for workload autoscaling.
  final pulumi.Input<String> hpaProfile;

  /// Creates a new [GetClusterPodAutoscaling].
  /// [hpaProfile] HPA Profile is used to configure the Horizontal Pod Autoscaler (HPA) profile for the cluster.
  GetClusterPodAutoscaling({
    required this.hpaProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hpaProfile': hpaProfile,
    };
  }

  factory GetClusterPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetClusterPodAutoscaling(
      hpaProfile: pulumi.Input.fromValue(map['hpaProfile'] as String),
    );
  }
}

