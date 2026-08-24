// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersDeploymentVersion {
  final pulumi.Input<double> percentage;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetWorkersDeploymentVersion].
  /// [percentage] Required.
  /// [versionId] Required.
  const GetWorkersDeploymentVersion({
    required this.percentage,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': percentage,
      'versionId': versionId,
    };
  }

  factory GetWorkersDeploymentVersion.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentVersion(
      percentage: pulumi.Input.fromValue((map['percentage'] as num).toDouble()),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
