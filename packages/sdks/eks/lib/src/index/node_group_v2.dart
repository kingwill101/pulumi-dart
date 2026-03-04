import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_v2_args.dart';
import 'package:pulumi_aws/autoscaling.dart' as pulumi_aws_autoscaling;
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// NodeGroup is a component that wraps the AWS EC2 instances that provide compute capacity for an EKS cluster.
class NodeGroupV2 extends pulumi.ComponentResource {
  /// The AutoScalingGroup for the Node group.
  late final pulumi.Output<pulumi_aws_autoscaling.Group?> autoScalingGroup;

  /// The additional security groups for the node group that captures user-specific rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> extraNodeSecurityGroups;

  /// The security group for the node group to communicate with the cluster, or undefined if using `nodeSecurityGroupId`.
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroup?> nodeSecurityGroup;

  /// The ID of the security group for the node group to communicate with the cluster.
  late final pulumi.Output<String?> nodeSecurityGroupId;

  /// Creates a new [NodeGroupV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroupV2]. {@macro pulumi_index_node_group_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroupV2(
    String name, {
    NodeGroupV2Args? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'eks:index:NodeGroupV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
         remote: true,
       ) {
    autoScalingGroup = registerOutput<pulumi_aws_autoscaling.Group?>(
      'autoScalingGroup',
    );
    extraNodeSecurityGroups = registerOutput<List<Map<String, dynamic>>?>(
      'extraNodeSecurityGroups',
    );
    nodeSecurityGroup = registerOutput<pulumi_aws_ec2.SecurityGroup?>(
      'nodeSecurityGroup',
    );
    nodeSecurityGroupId = registerOutput<String?>('nodeSecurityGroupId');
  }
}
