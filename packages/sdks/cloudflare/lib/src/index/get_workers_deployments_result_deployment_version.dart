// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersDeploymentsResultDeploymentVersion {
  /// Percentage of traffic served by this version.
  final pulumi.Input<double> percentage;
  /// Identifier of the Worker Version.
  final pulumi.Input<String> versionId;

  /// Creates a new [GetWorkersDeploymentsResultDeploymentVersion].
  /// [percentage] Percentage of traffic served by this version.
  /// [versionId] Identifier of the Worker Version.
  const GetWorkersDeploymentsResultDeploymentVersion({
    required this.percentage,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': percentage,
      'versionId': versionId,
    };
  }

  factory GetWorkersDeploymentsResultDeploymentVersion.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentsResultDeploymentVersion(
      percentage: pulumi.Input.fromValue((map['percentage'] as num).toDouble()),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
