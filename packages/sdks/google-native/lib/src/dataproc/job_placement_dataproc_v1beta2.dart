// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataproc job config.
class JobPlacementDataprocV1beta2 {
  /// Optional. Cluster labels to identify a cluster where the job will be submitted.
  final pulumi.Input<Map<String, String>>? clusterLabels;
  /// The name of the cluster where the job will be submitted.
  final pulumi.Input<String> clusterName;

  /// Creates a new [JobPlacementDataprocV1beta2].
  /// [clusterLabels] Optional. Cluster labels to identify a cluster where the job will be submitted.
  /// [clusterName] The name of the cluster where the job will be submitted.
  JobPlacementDataprocV1beta2({
    this.clusterLabels,
    required this.clusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLabels': ?clusterLabels,
      'clusterName': clusterName,
    };
  }

  factory JobPlacementDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return JobPlacementDataprocV1beta2(
      clusterLabels: (() { final guardedValue = map['clusterLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
    );
  }
}

