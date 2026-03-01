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
    required pulumi.Output<pulumi_aws_ec2.SecurityGroup> clusterSecurityGroup,
    required pulumi.Output<pulumi_aws_eks.Cluster> eksCluster,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
  }) :
      clusterSecurityGroup = pulumi.Input.asInput<pulumi_aws_ec2.SecurityGroup>(clusterSecurityGroup),
      eksCluster = pulumi.Input.asInput<pulumi_aws_eks.Cluster>(eksCluster),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

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
      clusterSecurityGroup: pulumi.Output.create<pulumi_aws_ec2.SecurityGroup>(map['clusterSecurityGroup'] as pulumi_aws_ec2.SecurityGroup),
      eksCluster: pulumi.Output.create<pulumi_aws_eks.Cluster>(map['eksCluster'] as pulumi_aws_eks.Cluster),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

