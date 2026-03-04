// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Statistics information about resource consumption.
class GoogleCloudAiplatformV1ResourcesConsumedResponse {
  /// The number of replica hours used. Note that many replicas may run in parallel, and additionally any given work may be queued for some time. Therefore this value is not strictly related to wall time.
  final pulumi.Input<double> replicaHours;

  /// Creates a new [GoogleCloudAiplatformV1ResourcesConsumedResponse].
  /// [replicaHours] The number of replica hours used. Note that many replicas may run in parallel, and additionally any given work may be queued for some time. Therefore this value is not strictly related to wall time.
  GoogleCloudAiplatformV1ResourcesConsumedResponse({
    required this.replicaHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'replicaHours': replicaHours};
  }

  factory GoogleCloudAiplatformV1ResourcesConsumedResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ResourcesConsumedResponse(
      replicaHours: pulumi.Input.fromValue(map['replicaHours'] as double),
    );
  }
}
