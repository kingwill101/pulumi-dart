import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_args.dart';
import 'package:pulumi_aws/cloudformation.dart' as pulumi_aws_cloudformation;
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// NodeGroup is a component that wraps the AWS EC2 instances that provide compute capacity for an EKS cluster.
class NodeGroup extends pulumi.ComponentResource {
  /// The AutoScalingGroup name for the Node group.
  late final pulumi.Output<String?> autoScalingGroupName;
  /// The CloudFormation Stack which defines the Node AutoScalingGroup.
  late final pulumi.Output<pulumi_aws_cloudformation.Stack?> cfnStack;
  /// The additional security groups for the node group that captures user-specific rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> extraNodeSecurityGroups;
  /// The security group for the node group to communicate with the cluster, or undefined if using `nodeSecurityGroupId`.
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroup?> nodeSecurityGroup;
  /// The ID of the security group for the node group to communicate with the cluster.
  late final pulumi.Output<String?> nodeSecurityGroupId;

  /// Creates a new [NodeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroup]. {@macro pulumi_index_node_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'eks:index:NodeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
          remote: true,
        ) {
    autoScalingGroupName = registerOutput<String?>('autoScalingGroupName');
    cfnStack = registerOutput<pulumi_aws_cloudformation.Stack?>('cfnStack');
    extraNodeSecurityGroups = registerOutput<List<Map<String, dynamic>>?>('extraNodeSecurityGroups');
    nodeSecurityGroup = registerOutput<pulumi_aws_ec2.SecurityGroup?>('nodeSecurityGroup');
    nodeSecurityGroupId = registerOutput<String?>('nodeSecurityGroupId');
  }
}
