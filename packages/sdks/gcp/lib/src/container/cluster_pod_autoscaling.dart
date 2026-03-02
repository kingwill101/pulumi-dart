// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPodAutoscaling {
  /// Enable the Horizontal Pod Autoscaling profile for this cluster.
  /// Acceptable values are:
  /// * `"NONE"`: Customers explicitly opt-out of HPA profiles.
  /// * `"PERFORMANCE"`: PERFORMANCE is used when customers opt-in to the performance HPA profile. In this profile we support a higher number of HPAs per cluster and faster metrics collection for workload autoscaling.
  /// See [HPAProfile](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#hpaprofile) for more details.
  final pulumi.Input<String> hpaProfile;

  /// Creates a new [ClusterPodAutoscaling].
  /// [hpaProfile] Enable the Horizontal Pod Autoscaling profile for this cluster.
  ClusterPodAutoscaling({
    required this.hpaProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hpaProfile': hpaProfile,
    };
  }

  factory ClusterPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterPodAutoscaling(
      hpaProfile: (map['hpaProfile'] as String).input(),
    );
  }
}

