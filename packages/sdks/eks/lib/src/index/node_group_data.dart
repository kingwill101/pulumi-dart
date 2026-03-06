// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/autoscaling.dart' as pulumi_aws_autoscaling;
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// NodeGroupData describes the resources created for the given NodeGroup.
class NodeGroupData {
  /// The AutoScalingGroup for the node group.
  final pulumi.Input<pulumi_aws_autoscaling.Group> autoScalingGroup;
  /// The additional security groups for the node group that captures user-specific rules.
  final pulumi.Input<List<pulumi_aws_ec2.SecurityGroup>> extraNodeSecurityGroups;
  /// The security group for the node group to communicate with the cluster.
  final pulumi.Input<pulumi_aws_ec2.SecurityGroup> nodeSecurityGroup;

  /// Creates a new [NodeGroupData].
  /// [autoScalingGroup] The AutoScalingGroup for the node group.
  /// [extraNodeSecurityGroups] The additional security groups for the node group that captures user-specific rules.
  /// [nodeSecurityGroup] The security group for the node group to communicate with the cluster.
  const NodeGroupData({
    required this.autoScalingGroup,
    required this.extraNodeSecurityGroups,
    required this.nodeSecurityGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingGroup': autoScalingGroup,
      'extraNodeSecurityGroups': extraNodeSecurityGroups,
      'nodeSecurityGroup': nodeSecurityGroup,
    };
  }

  factory NodeGroupData.fromMap(Map<String, dynamic> map) {
    return NodeGroupData(
      autoScalingGroup: pulumi.Input.fromValue(map['autoScalingGroup'] as pulumi_aws_autoscaling.Group),
      extraNodeSecurityGroups: pulumi.Input.fromValue((map['extraNodeSecurityGroups'] as List).cast<pulumi_aws_ec2.SecurityGroup>()),
      nodeSecurityGroup: pulumi.Input.fromValue(map['nodeSecurityGroup'] as pulumi_aws_ec2.SecurityGroup),
    );
  }
}

