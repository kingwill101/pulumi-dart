import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_get_kubeconfig_args.dart';
import 'cluster_get_kubeconfig_result.dart';
import 'core_data.dart';
import 'node_group_data.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;
import 'package:pulumi_aws/providers.dart' as pulumi_aws_providers;

/// Cluster is a component that wraps the AWS and Kubernetes resources necessary to run an EKS cluster, its worker nodes, its optional StorageClasses, and an optional deployment of the Kubernetes Dashboard.
///
/// ## Example Usage
///
/// ### Provisioning a New EKS Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as eks from "@pulumi/eks";
///
/// // Create an EKS cluster with the default configuration.
/// const cluster = new eks.Cluster("cluster", {});
///
/// // Export the cluster's kubeconfig.
/// export const kubeconfig = cluster.kubeconfig;
/// ```
///
/// ```python
///  import pulumi
///  import pulumi_eks as eks
///
///  # Create an EKS cluster with the default configuration.
///  cluster = eks.Cluster("cluster")
///
///  # Export the cluster's kubeconfig.
///  pulumi.export("kubeconfig", cluster.kubeconfig)
/// ```
///
/// ```go
///  package main
///
///  import (
///  	"github.com/pulumi/pulumi-eks/sdk/go/eks"
///  	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
///  )
///
/// func main() {
///  	pulumi.Run(func(ctx *pulumi.Context) error {
///  		// Create an EKS cluster with the default configuration.
/// 		cluster, err := eks.NewCluster(ctx, "cluster", nil)
///  		if err != nil {
///  			return err
///  		}
///  		// Export the cluster's kubeconfig.
///  		ctx.Export("kubeconfig", cluster.Kubeconfig)
/// 		return nil
///  	})
///  }
/// ```
///
/// ```csharp
///  using System.Collections.Generic;
///  using Pulumi;
///  using Eks = Pulumi.Eks;
///
///  return await Deployment.RunAsync(() =>
///  {
///  	// Create an EKS cluster with the default configuration.
/// 	var cluster = new Eks.Cluster("cluster");
///
///  	return new Dictionary<string, object?>
///  	{
///  		// Export the cluster's kubeconfig.
///  		["kubeconfig"] = cluster.Kubeconfig,
///  	};
///  });
///
/// ```
///
/// ```java
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.eks.Cluster;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// 	public static void main(String[] args) {
/// 		Pulumi.run(App::stack);
/// 	}
///
/// 	 public static void stack(Context ctx) {
///  		// Create an EKS cluster with the default configuration.
///  		var cluster = new Cluster("cluster");
///
///  		// Export the cluster's kubeconfig.
/// 		ctx.export("kubeconfig", cluster.kubeconfig());
/// 	}
///  }
/// ```
///
/// ```yaml
/// resources:
/// # Create an EKS cluster with the default configuration.
/// cluster:
/// type: eks:Cluster
/// outputs:
/// # Export the cluster's kubeconfig.
/// kubeconfig: ${cluster.kubeconfig}
///
/// ```
class Cluster extends pulumi.ComponentResource {
  /// The name of the IAM role created for nodes managed by EKS Auto Mode. Defaults to an empty string.
  late final pulumi.Output<String?> autoModeNodeRoleName;

  /// The AWS resource provider.
  late final pulumi.Output<pulumi_aws_providers.ProviderProvider?> awsProvider;

  /// The ID of the security group rule that gives node group access to the cluster API server. Defaults to an empty string if `skipDefaultSecurityGroups` is set to true.
  late final pulumi.Output<String?> clusterIngressRuleId;

  /// The security group for the EKS cluster.
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroup?> clusterSecurityGroup;

  /// The cluster security group ID of the EKS cluster. Returns the EKS created security group if `skipDefaultSecurityGroups` is set to true.
  late final pulumi.Output<String?> clusterSecurityGroupId;

  /// The EKS cluster and its dependencies.
  late final pulumi.Output<CoreData?> core;

  /// The default Node Group configuration, or undefined if `skipDefaultNodeGroup` was specified.
  late final pulumi.Output<NodeGroupData?> defaultNodeGroup;

  /// The name of the default node group's AutoScaling Group. Defaults to an empty string if `skipDefaultNodeGroup` is set to true.
  late final pulumi.Output<String?> defaultNodeGroupAsgName;

  /// The EKS cluster.
  late final pulumi.Output<pulumi_aws_eks.Cluster?> eksCluster;

  /// The ingress rule that gives node group access to cluster API server.
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroupRule?>
  eksClusterIngressRule;

  /// The ID of the Fargate Profile. Defaults to an empty string if no Fargate profile is configured.
  late final pulumi.Output<String?> fargateProfileId;

  /// The status of the Fargate Profile. Defaults to an empty string if no Fargate profile is configured.
  late final pulumi.Output<String?> fargateProfileStatus;

  /// The service roles used by the EKS cluster. Only supported with authentication mode `CONFIG_MAP` or `API_AND_CONFIG_MAP`.
  late final pulumi.Output<List<Map<String, dynamic>>?> instanceRoles;

  /// A kubeconfig that can be used to connect to the EKS cluster.
  late final pulumi.Output<dynamic> kubeconfig;

  /// A kubeconfig that can be used to connect to the EKS cluster as a JSON string.
  late final pulumi.Output<String?> kubeconfigJson;

  /// The security group for the cluster's nodes.
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroup?> nodeSecurityGroup;

  /// The node security group ID of the EKS cluster. Returns the EKS created security group if `skipDefaultSecurityGroups` is set to true.
  late final pulumi.Output<String?> nodeSecurityGroupId;

  /// The OIDC Issuer of the EKS cluster (OIDC Provider URL without leading `https://`).
  ///
  /// This value can be used to associate kubernetes service accounts with IAM roles. For more information, see https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html.
  late final pulumi.Output<String?> oidcIssuer;

  /// The ARN of the IAM OpenID Connect Provider for the EKS cluster. Defaults to an empty string if no OIDC provider is configured.
  late final pulumi.Output<String?> oidcProviderArn;

  /// Issuer URL for the OpenID Connect identity provider of the EKS cluster.
  late final pulumi.Output<String?> oidcProviderUrl;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_index_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'eks:index:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
         remote: true,
       ) {
    autoModeNodeRoleName = registerOutput<String?>('autoModeNodeRoleName');
    awsProvider = registerOutput<pulumi_aws_providers.ProviderProvider?>(
      'awsProvider',
    );
    clusterIngressRuleId = registerOutput<String?>('clusterIngressRuleId');
    clusterSecurityGroup = registerOutput<pulumi_aws_ec2.SecurityGroup?>(
      'clusterSecurityGroup',
    );
    clusterSecurityGroupId = registerOutput<String?>('clusterSecurityGroupId');
    core = registerOutput<CoreData?>('core');
    defaultNodeGroup = registerOutput<NodeGroupData?>('defaultNodeGroup');
    defaultNodeGroupAsgName = registerOutput<String?>(
      'defaultNodeGroupAsgName',
    );
    eksCluster = registerOutput<pulumi_aws_eks.Cluster?>('eksCluster');
    eksClusterIngressRule = registerOutput<pulumi_aws_ec2.SecurityGroupRule?>(
      'eksClusterIngressRule',
    );
    fargateProfileId = registerOutput<String?>('fargateProfileId');
    fargateProfileStatus = registerOutput<String?>('fargateProfileStatus');
    instanceRoles = registerOutput<List<Map<String, dynamic>>?>(
      'instanceRoles',
    );
    kubeconfig = registerOutput<dynamic>('kubeconfig');
    kubeconfigJson = registerOutput<String?>('kubeconfigJson');
    nodeSecurityGroup = registerOutput<pulumi_aws_ec2.SecurityGroup?>(
      'nodeSecurityGroup',
    );
    nodeSecurityGroupId = registerOutput<String?>('nodeSecurityGroupId');
    oidcIssuer = registerOutput<String?>('oidcIssuer');
    oidcProviderArn = registerOutput<String?>('oidcProviderArn');
    oidcProviderUrl = registerOutput<String?>('oidcProviderUrl');
  }

  /// Generate a kubeconfig for cluster authentication that does not use the default AWS credential provider chain, and instead is scoped to the supported options in `KubeconfigOptions`.
  ///
  /// The kubeconfig generated is automatically stringified for ease of use with the pulumi/kubernetes provider.
  ///
  /// See for more details:
  /// - https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
  /// - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-role.html
  /// - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
  /// [args] Arguments passed to this method call. {@macro pulumi_index_cluster_get_kubeconfig_args_doc}
  Future<ClusterGetKubeconfigResult> getKubeconfig({
    ClusterGetKubeconfigArgs? args,
  }) async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'eks:index:Cluster/getKubeconfig',
      args?.toMap() ?? const <String, dynamic>{},
      self: this,
    );
    return ClusterGetKubeconfigResult.fromMap(result);
  }
}
