// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersDeploymentVersion {
  final pulumi.Input<double> percentage;
  final pulumi.Input<String> versionId;

  /// Creates a new [WorkersDeploymentVersion].
  /// [percentage] Required.
  /// [versionId] Required.
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
