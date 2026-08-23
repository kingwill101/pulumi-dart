// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_containeranalysis_v1beta1.dart';

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetails {
  /// Deployment history for the resource.
  final pulumi.Input<DeploymentContaineranalysisV1beta1> deployment;

  /// Creates a new [GrafeasV1beta1DeploymentDetails].
  /// [deployment] Deployment history for the resource.
  const GrafeasV1beta1DeploymentDetails({
    required this.deployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': pulumi.Input.mapInputValue<DeploymentContaineranalysisV1beta1, Map<String, dynamic>>(deployment, (value) => value.toMap()),
    };
  }

  factory GrafeasV1beta1DeploymentDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1DeploymentDetails(
      deployment: pulumi.Input.fromValue(DeploymentContaineranalysisV1beta1.fromMap((map['deployment']! as Map).cast<String, dynamic>())),
    );
  }
}
