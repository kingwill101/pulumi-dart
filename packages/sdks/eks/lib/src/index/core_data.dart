// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_entry.dart';
import 'cluster_node_group_options.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;
import 'package:pulumi_aws/providers.dart' as pulumi_aws_providers;
import 'package:pulumi_kubernetes/core.dart' as pulumi_kubernetes_core;
import 'package:pulumi_kubernetes/providers.dart' as pulumi_kubernetes_providers;
import 'package:pulumi_kubernetes/storage_k8s_io.dart' as pulumi_kubernetes_storage_k8s_io;

/// Defines the core set of data associated with an EKS cluster, including the network in which it runs.
class CoreData {
  /// The access entries added to the cluster.
  final pulumi.Input<List<AccessEntry>>? accessEntries;
  final pulumi.Input<pulumi_aws_providers.ProviderProvider>? awsProvider;
  final pulumi.Input<pulumi_aws_eks.Cluster> cluster;
  /// The IAM Role attached to the EKS Cluster
  final pulumi.Input<pulumi_aws_iam.Role> clusterIamRole;
  final pulumi.Input<pulumi_aws_ec2.SecurityGroup>? clusterSecurityGroup;
  final pulumi.Input<pulumi_kubernetes_core.ConfigMap>? eksNodeAccess;
  final pulumi.Input<pulumi_aws_eks.ClusterEncryptionConfig>? encryptionConfig;
  /// The EKS cluster's Kubernetes API server endpoint.
  final pulumi.Input<String> endpoint;
  /// The Fargate profile used to manage which pods run on Fargate.
  final pulumi.Input<pulumi_aws_eks.FargateProfile>? fargateProfile;
  /// The IAM instance roles for the cluster's nodes.
  final pulumi.Input<List<pulumi_aws_iam.Role>> instanceRoles;
  /// The kubeconfig file for the cluster.
  final pulumi.Input<dynamic>? kubeconfig;
  /// The cluster's node group options.
  final pulumi.Input<ClusterNodeGroupOptions> nodeGroupOptions;
  /// Tags attached to the security groups associated with the cluster's worker nodes.
  final pulumi.Input<Map<String, String>>? nodeSecurityGroupTags;
  final pulumi.Input<pulumi_aws_iam.OpenIdConnectProvider>? oidcProvider;
  /// List of subnet IDs for the private subnets.
  final pulumi.Input<List<String>>? privateSubnetIds;
  final pulumi.Input<pulumi_kubernetes_providers.ProviderProvider> provider;
  /// List of subnet IDs for the public subnets.
  final pulumi.Input<List<String>>? publicSubnetIds;
  /// The storage class used for persistent storage by the cluster.
  final pulumi.Input<Map<String, pulumi_kubernetes_storage_k8s_io.StorageClass>>? storageClasses;
  /// List of subnet IDs for the EKS cluster.
  final pulumi.Input<List<String>> subnetIds;
  /// A map of tags assigned to the EKS cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC CNI for the cluster.
  final pulumi.Input<dynamic>? vpcCni;
  /// ID of the cluster's VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [CoreData].
  /// [accessEntries] The access entries added to the cluster.
  /// [awsProvider] Optional.
  /// [cluster] Required.
  /// [clusterIamRole] The IAM Role attached to the EKS Cluster
  /// [clusterSecurityGroup] Optional.
  /// [eksNodeAccess] Optional.
  /// [encryptionConfig] Optional.
  /// [endpoint] The EKS cluster's Kubernetes API server endpoint.
  /// [fargateProfile] The Fargate profile used to manage which pods run on Fargate.
  /// [instanceRoles] The IAM instance roles for the cluster's nodes.
  /// [kubeconfig] The kubeconfig file for the cluster.
  /// [nodeGroupOptions] The cluster's node group options.
  /// [nodeSecurityGroupTags] Tags attached to the security groups associated with the cluster's worker nodes.
  /// [oidcProvider] Optional.
  /// [privateSubnetIds] List of subnet IDs for the private subnets.
  /// [provider] Required.
  /// [publicSubnetIds] List of subnet IDs for the public subnets.
  /// [storageClasses] The storage class used for persistent storage by the cluster.
  /// [subnetIds] List of subnet IDs for the EKS cluster.
  /// [tags] A map of tags assigned to the EKS cluster.
  /// [vpcCni] The VPC CNI for the cluster.
  /// [vpcId] ID of the cluster's VPC.
  const CoreData({
    this.accessEntries,
    this.awsProvider,
    required this.cluster,
    required this.clusterIamRole,
    this.clusterSecurityGroup,
    this.eksNodeAccess,
    this.encryptionConfig,
    required this.endpoint,
    this.fargateProfile,
    required this.instanceRoles,
    this.kubeconfig,
    required this.nodeGroupOptions,
    this.nodeSecurityGroupTags,
    this.oidcProvider,
    this.privateSubnetIds,
    required this.provider,
    this.publicSubnetIds,
    this.storageClasses,
    required this.subnetIds,
    this.tags,
    this.vpcCni,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEntries': ?pulumi.Input.mapOptionalInputValue<List<AccessEntry>, List<Map<String, dynamic>>>(accessEntries, (value) => pulumi.Input.encodeList<AccessEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'awsProvider': ?awsProvider,
      'cluster': cluster,
      'clusterIamRole': clusterIamRole,
      'clusterSecurityGroup': ?clusterSecurityGroup,
      'eksNodeAccess': ?eksNodeAccess,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_eks.ClusterEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'endpoint': endpoint,
      'fargateProfile': ?fargateProfile,
      'instanceRoles': instanceRoles,
      'kubeconfig': ?kubeconfig,
      'nodeGroupOptions': pulumi.Input.mapInputValue<ClusterNodeGroupOptions, Map<String, dynamic>>(nodeGroupOptions, (value) => value.toMap()),
      'nodeSecurityGroupTags': ?nodeSecurityGroupTags,
      'oidcProvider': ?oidcProvider,
      'privateSubnetIds': ?privateSubnetIds,
      'provider': provider,
      'publicSubnetIds': ?publicSubnetIds,
      'storageClasses': ?storageClasses,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'vpcCni': ?vpcCni,
      'vpcId': vpcId,
    };
  }

  factory CoreData.fromMap(Map<String, dynamic> map) {
    return CoreData(
      accessEntries: (() { final guardedValue = map['accessEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessEntry>(guardedValue, (value) => AccessEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      awsProvider: (() { final guardedValue = map['awsProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_providers.ProviderProvider); })(),
      cluster: pulumi.Input.fromValue(map['cluster'] as pulumi_aws_eks.Cluster),
      clusterIamRole: pulumi.Input.fromValue(map['clusterIamRole'] as pulumi_aws_iam.Role),
      clusterSecurityGroup: (() { final guardedValue = map['clusterSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_ec2.SecurityGroup); })(),
      eksNodeAccess: (() { final guardedValue = map['eksNodeAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_kubernetes_core.ConfigMap); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_eks.ClusterEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      fargateProfile: (() { final guardedValue = map['fargateProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_eks.FargateProfile); })(),
      instanceRoles: pulumi.Input.fromValue((map['instanceRoles'] as List).cast<pulumi_aws_iam.Role>()),
      kubeconfig: (() { final guardedValue = map['kubeconfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      nodeGroupOptions: pulumi.Input.fromValue(ClusterNodeGroupOptions.fromMap((map['nodeGroupOptions']! as Map).cast<String, dynamic>())),
      nodeSecurityGroupTags: (() { final guardedValue = map['nodeSecurityGroupTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      oidcProvider: (() { final guardedValue = map['oidcProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_iam.OpenIdConnectProvider); })(),
      privateSubnetIds: (() { final guardedValue = map['privateSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      provider: pulumi.Input.fromValue(map['provider'] as pulumi_kubernetes_providers.ProviderProvider),
      publicSubnetIds: (() { final guardedValue = map['publicSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageClasses: (() { final guardedValue = map['storageClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, pulumi_kubernetes_storage_k8s_io.StorageClass>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcCni: (() { final guardedValue = map['vpcCni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

