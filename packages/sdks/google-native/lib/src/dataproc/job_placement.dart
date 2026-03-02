// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataproc job config.
class JobPlacement {
  /// Optional. Cluster labels to identify a cluster where the job will be submitted.
  final pulumi.Input<Map<String, String>>? clusterLabels;
  /// The name of the cluster where the job will be submitted.
  final pulumi.Input<String> clusterName;

  /// Creates a new [JobPlacement].
  /// [clusterLabels] Optional. Cluster labels to identify a cluster where the job will be submitted.
  /// [clusterName] The name of the cluster where the job will be submitted.
  JobPlacement({
    this.clusterLabels,
    required this.clusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLabels': ?clusterLabels,
      'clusterName': clusterName,
    };
  }

  factory JobPlacement.fromMap(Map<String, dynamic> map) {
    return JobPlacement(
      clusterLabels: map['clusterLabels'] == null ? null : ((map['clusterLabels'] as Map).cast<String, String>()).input(),
      clusterName: (map['clusterName'] as String).input(),
    );
  }
}

