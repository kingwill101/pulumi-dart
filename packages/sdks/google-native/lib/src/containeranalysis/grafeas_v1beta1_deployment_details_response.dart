// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_response_containeranalysis_v1beta1.dart';

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetailsResponse {
  /// Deployment history for the resource.
  final pulumi.Input<DeploymentResponseContaineranalysisV1beta1> deployment;

  /// Creates a new [GrafeasV1beta1DeploymentDetailsResponse].
  /// [deployment] Deployment history for the resource.
  GrafeasV1beta1DeploymentDetailsResponse({
    required this.deployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': pulumi.Input.mapInputValue<DeploymentResponseContaineranalysisV1beta1, Map<String, dynamic>>(deployment, (value) => value.toMap()),
    };
  }

  factory GrafeasV1beta1DeploymentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1DeploymentDetailsResponse(
      deployment: (DeploymentResponseContaineranalysisV1beta1.fromMap((map['deployment'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

