// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;

/// Defines how Kubernetes pods are executed in Fargate. See aws.eks.FargateProfileArgs for reference.
class FargateProfile {
  /// Specify a custom role to use for executing pods in Fargate. Defaults to creating a new role with the `arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy` policy attached.
  final pulumi.Input<String>? podExecutionRoleArn;
  /// Specify the namespace and label selectors to use for launching pods into Fargate.
  final pulumi.Input<List<pulumi_aws_eks.FargateProfileSelector>>? selectors;
  /// Specify the subnets in which to execute Fargate tasks for pods. Defaults to the private subnets associated with the cluster.
  final pulumi.Input<List<String>>? subnetIds;

  /// Creates a new [FargateProfile].
  /// [podExecutionRoleArn] Specify a custom role to use for executing pods in Fargate. Defaults to creating a new role with the `arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy` policy attached.
  /// [selectors] Specify the namespace and label selectors to use for launching pods into Fargate.
  /// [subnetIds] Specify the subnets in which to execute Fargate tasks for pods. Defaults to the private subnets associated with the cluster.
  const FargateProfile({
    this.podExecutionRoleArn,
    this.selectors,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podExecutionRoleArn': ?podExecutionRoleArn,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_eks.FargateProfileSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<pulumi_aws_eks.FargateProfileSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetIds': ?subnetIds,
    };
  }

  factory FargateProfile.fromMap(Map<String, dynamic> map) {
    return FargateProfile(
      podExecutionRoleArn: (() { final guardedValue = map['podExecutionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<pulumi_aws_eks.FargateProfileSelector>(guardedValue, (value) => pulumi_aws_eks.FargateProfileSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
