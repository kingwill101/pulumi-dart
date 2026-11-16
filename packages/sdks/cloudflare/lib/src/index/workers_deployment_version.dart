// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersDeploymentVersion {
  /// Percentage of traffic served by this version.
  final pulumi.Input<double> percentage;
  /// Identifier of the Worker Version.
  final pulumi.Input<String> versionId;

  /// Creates a new [WorkersDeploymentVersion].
  /// [percentage] Percentage of traffic served by this version.
  /// [versionId] Identifier of the Worker Version.
  const WorkersDeploymentVersion({
    required this.percentage,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': percentage,
      'versionId': versionId,
    };
  }

  factory WorkersDeploymentVersion.fromMap(Map<String, dynamic> map) {
    return WorkersDeploymentVersion(
      percentage: pulumi.Input.fromValue((map['percentage'] as num).toDouble()),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
