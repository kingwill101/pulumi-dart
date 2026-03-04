// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;

/// {@template pulumi_index_node_group_security_group_args_doc}
/// The set of arguments for NodeGroupSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_index_node_group_security_group_args_doc}
class NodeGroupSecurityGroupArgs {
  /// The security group associated with the EKS cluster.
  final pulumi.Input<pulumi_aws_ec2.SecurityGroup> clusterSecurityGroup;

  /// The EKS cluster associated with the worker node group
  final pulumi.Input<pulumi_aws_eks.Cluster> eksCluster;

  /// Key-value mapping of tags to apply to this security group.
  final pulumi.Input<Map<String, String>>? tags;

  /// The VPC in which to create the worker node group.
  final pulumi.Input<String> vpcId;

  /// Creates a new [NodeGroupSecurityGroupArgs].
  /// [clusterSecurityGroup] The security group associated with the EKS cluster.
  /// [eksCluster] The EKS cluster associated with the worker node group
  /// [tags] Key-value mapping of tags to apply to this security group.
  /// [vpcId] The VPC in which to create the worker node group.
  NodeGroupSecurityGroupArgs({
    required this.clusterSecurityGroup,
    required this.eksCluster,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSecurityGroup': clusterSecurityGroup,
      'eksCluster': eksCluster,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory NodeGroupSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupSecurityGroupArgs(
      clusterSecurityGroup: pulumi.Input.fromValue(
        map['clusterSecurityGroup'] as pulumi_aws_ec2.SecurityGroup,
      ),
      eksCluster: pulumi.Input.fromValue(
        map['eksCluster'] as pulumi_aws_eks.Cluster,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
