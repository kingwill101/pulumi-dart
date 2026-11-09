// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_deployments_result_deployment.dart';

class GetWorkersDeploymentsResult {
  final pulumi.Input<List<GetWorkersDeploymentsResultDeployment>> deployments;

  /// Creates a new [GetWorkersDeploymentsResult].
  /// [deployments] Required.
  const GetWorkersDeploymentsResult({
    required this.deployments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployments': pulumi.Input.mapInputValue<List<GetWorkersDeploymentsResultDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetWorkersDeploymentsResultDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkersDeploymentsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentsResult(
      deployments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersDeploymentsResultDeployment>(map['deployments']!, (value) => GetWorkersDeploymentsResultDeployment.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
