import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_security_group_args.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// NodeGroupSecurityGroup is a component that wraps creating a security group for node groups with the default ingress & egress rules required to connect and work with the EKS cluster security group.
class NodeGroupSecurityGroup extends pulumi.ComponentResource {
  /// The security group for node groups with the default ingress & egress rules required to connect and work with the EKS cluster security group.
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroup?> securityGroup;

  /// The EKS cluster ingress rule.
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroupRule?> securityGroupRule;

  /// Creates a new [NodeGroupSecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroupSecurityGroup]. {@macro pulumi_index_node_group_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroupSecurityGroup(
    String name, {
    NodeGroupSecurityGroupArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'eks:index:NodeGroupSecurityGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
         remote: true,
       ) {
    securityGroup = registerOutput<pulumi_aws_ec2.SecurityGroup?>(
      'securityGroup',
    );
    securityGroupRule = registerOutput<pulumi_aws_ec2.SecurityGroupRule?>(
      'securityGroupRule',
    );
  }
}
