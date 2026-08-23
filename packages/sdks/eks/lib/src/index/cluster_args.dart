// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_entry.dart';
import 'authentication_mode.dart';
import 'auto_mode_options.dart';
import 'cluster_node_group_options.dart';
import 'core_dns_addon_options.dart';
import 'creation_role_provider.dart';
import 'kube_proxy_addon_options.dart';
import 'kubeconfig_options.dart';
import 'role_mapping.dart';
import 'user_mapping.dart';
import 'vpc_cni_options.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// {@template pulumi_index_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_index_cluster_args_doc}
class ClusterArgs {
  /// Access entries to add to the EKS cluster. They can be used to allow IAM principals to access the cluster. Access entries are only supported with authentication mode `API` or `API_AND_CONFIG_MAP`.
  ///
  /// See for more details:
  /// https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html
  final pulumi.Input<Map<String, AccessEntry>>? accessEntries;
  /// The authentication mode of the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`.
  ///
  /// See for more details:
  /// https://docs.aws.amazon.com/eks/latest/userguide/grant-k8s-access.html#set-cam
  final pulumi.Input<AuthenticationMode>? authenticationMode;
  /// Configuration Options for EKS Auto Mode. If EKS Auto Mode is enabled, AWS will manage cluster infrastructure on your behalf.
  ///
  /// For more information, see: https://docs.aws.amazon.com/eks/latest/userguide/automode.html
  final pulumi.Input<AutoModeOptions>? autoMode;
  /// Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`
  final pulumi.Input<bool>? bootstrapSelfManagedAddons;
  /// The security group to use for the cluster API endpoint. If not provided, a new security group will be created with full internet egress and ingress from node groups.
  ///
  /// Note: The security group resource should not contain any inline ingress or egress rules.
  final pulumi.Input<pulumi_aws_ec2.SecurityGroup>? clusterSecurityGroup;
  /// The tags to apply to the cluster security group.
  final pulumi.Input<Map<String, String>>? clusterSecurityGroupTags;
  /// The tags to apply to the EKS cluster.
  final pulumi.Input<Map<String, String>>? clusterTags;
  /// Options for managing the `coredns` addon.
  final pulumi.Input<CoreDnsAddonOptions>? corednsAddonOptions;
  /// Whether to create the instance role for the EKS cluster. Defaults to true when using the default node group, false otherwise.
  /// If set to false when using the default node group, an instance role or instance profile must be provided.n
  /// Note: this option has no effect if a custom instance role is provided with `instanceRole` or `instanceRoles`.
  final pulumi.Input<bool>? createInstanceRole;
  /// Indicates whether an IAM OIDC Provider is created for the EKS cluster.
  ///
  /// The OIDC provider is used in the cluster in combination with k8s Service Account annotations to provide IAM roles at the k8s Pod level.
  ///
  /// See for more details:
  /// - https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html
  /// - https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
  /// - https://aws.amazon.com/blogs/opensource/introducing-fine-grained-iam-roles-service-accounts/
  /// - https://www.pulumi.com/registry/packages/aws/api-docs/eks/cluster/#enabling-iam-roles-for-service-accounts
  final pulumi.Input<bool>? createOidcProvider;
  /// The IAM Role Provider used to create & authenticate against the EKS cluster. This role is given `[system:masters]` permission in K8S, See: https://docs.aws.amazon.com/eks/latest/userguide/add-user-role.html
  ///
  /// Note: This option is only supported with Pulumi nodejs programs. Please use `ProviderCredentialOpts` as an alternative instead.
  final pulumi.Input<CreationRoleProvider>? creationRoleProvider;
  /// Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// The number of worker nodes that should be running in the cluster. Defaults to 2.
  final pulumi.Input<int>? desiredCapacity;
  /// Sets the 'enableConfigMapMutable' option on the cluster kubernetes provider.
  ///
  /// Applies updates to the aws-auth ConfigMap in place over a replace operation if set to true.
  /// https://www.pulumi.com/registry/packages/kubernetes/api-docs/provider/#enableconfigmapmutable_nodejs
  final pulumi.Input<bool>? enableConfigMapMutable;
  /// Enable EKS control plane logging. This sends logs to cloudwatch. Possible list of values are: ["api", "audit", "authenticator", "controllerManager", "scheduler"]. By default it is off.
  final pulumi.Input<List<String>>? enabledClusterLogTypes;
  /// KMS Key ARN to use with the encryption configuration for the cluster.
  ///
  /// Only available on Kubernetes 1.13+ clusters created after March 6, 2020.
  /// See for more details:
  /// - https://aws.amazon.com/about-aws/whats-new/2020/03/amazon-eks-adds-envelope-encryption-for-secrets-with-aws-kms/
  final pulumi.Input<String>? encryptionConfigKeyArn;
  /// Indicates whether or not the Amazon EKS private API server endpoint is enabled. Default is `false`.
  final pulumi.Input<bool>? endpointPrivateAccess;
  /// Indicates whether or not the Amazon EKS public API server endpoint is enabled. Default is `true`.
  final pulumi.Input<bool>? endpointPublicAccess;
  /// Add support for launching pods in Fargate. Defaults to launching pods in the `default` namespace.  If specified, the default node group is skipped as though `skipDefaultNodeGroup: true` had been passed.
  final pulumi.Input<bool>? fargate;
  /// Use the latest recommended EKS Optimized Linux AMI with GPU support for the worker nodes from the AWS Systems Manager Parameter Store.
  ///
  /// Defaults to false.
  ///
  /// Note: `gpu` and `nodeAmiId` are mutually exclusive.
  ///
  /// See for more details:
  /// - https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html
  /// - https://docs.aws.amazon.com/eks/latest/userguide/retrieve-ami-id.html
  final pulumi.Input<bool>? gpu;
  /// The default IAM InstanceProfile to use on the Worker NodeGroups, if one is not already set in the NodeGroup.
  final pulumi.Input<String>? instanceProfileName;
  /// This enables the simple case of only registering a *single* IAM instance role with the cluster, that is required to be shared by *all* node groups in their instance profiles.
  ///
  /// Note: options `instanceRole` and `instanceRoles` are mutually exclusive.
  final pulumi.Input<pulumi_aws_iam.Role>? instanceRole;
  /// This enables the advanced case of registering *many* IAM instance roles with the cluster for per node group IAM, instead of the simpler, shared case of `instanceRole`.
  ///
  /// Note: options `instanceRole` and `instanceRoles` are mutually exclusive.
  final pulumi.Input<List<pulumi_aws_iam.Role>>? instanceRoles;
  /// The instance type to use for the cluster's nodes. Defaults to "t3.medium".
  final pulumi.Input<String>? instanceType;
  /// The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`.
  /// You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
  final pulumi.Input<String>? ipFamily;
  /// Options for managing the `kube-proxy` addon.
  final pulumi.Input<KubeProxyAddonOptions>? kubeProxyAddonOptions;
  /// The CIDR block to assign Kubernetes service IP addresses from. If you don't
  /// specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or
  /// 172.20.0.0/16 CIDR blocks. This setting only applies to IPv4 clusters. We recommend that you specify a block
  /// that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify
  /// a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created.
  ///
  /// The block must meet the following requirements:
  /// - Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0.0/12, or 192.168.0.0/16.
  /// - Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC.
  /// - Between /24 and /12.
  final pulumi.Input<String>? kubernetesServiceIpAddressRange;
  /// The maximum number of worker nodes running in the cluster. Defaults to 2.
  final pulumi.Input<int>? maxSize;
  /// The minimum number of worker nodes running in the cluster. Defaults to 1.
  final pulumi.Input<int>? minSize;
  /// The cluster's physical resource name.
  ///
  /// If not specified, the default is to use auto-naming for the cluster's name, resulting in a physical name with the format `${name}-eksCluster-0123abcd`.
  ///
  /// See for more details: https://www.pulumi.com/docs/intro/concepts/programming-model/#autonaming
  final pulumi.Input<String>? name;
  /// The AMI ID to use for the worker nodes.
  ///
  /// Defaults to the latest recommended EKS Optimized Linux AMI from the AWS Systems Manager Parameter Store.
  ///
  /// Note: `nodeAmiId` and `gpu` are mutually exclusive.
  ///
  /// See for more details:
  /// - https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html.
  final pulumi.Input<String>? nodeAmiId;
  /// Whether or not to auto-assign the EKS worker nodes public IP addresses. If this toggle is set to true, the EKS workers will be auto-assigned public IPs. If false, they will not be auto-assigned public IPs.
  final pulumi.Input<bool>? nodeAssociatePublicIpAddress;
  /// The common configuration settings for NodeGroups.
  final pulumi.Input<ClusterNodeGroupOptions>? nodeGroupOptions;
  /// Public key material for SSH access to worker nodes. See allowed formats at:
  /// https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
  /// If not provided, no SSH access is enabled on VMs.
  final pulumi.Input<String>? nodePublicKey;
  /// Encrypt the root block device of the nodes in the node group.
  final pulumi.Input<bool>? nodeRootVolumeEncrypted;
  /// The size in GiB of a cluster node's root volume. Defaults to 20.
  final pulumi.Input<int>? nodeRootVolumeSize;
  /// The tags to apply to the default `nodeSecurityGroup` created by the cluster.
  ///
  /// Note: The `nodeSecurityGroupTags` option and the node group option `nodeSecurityGroup` are mutually exclusive.
  final pulumi.Input<Map<String, String>>? nodeSecurityGroupTags;
  /// The subnets to use for worker nodes. Defaults to the value of subnetIds.
  final pulumi.Input<List<String>>? nodeSubnetIds;
  /// Extra code to run on node startup. This code will run after the AWS EKS bootstrapping code and before the node signals its readiness to the managing CloudFormation stack. This code must be a typical user data script: critically it must begin with an interpreter directive (i.e. a `#!`).
  final pulumi.Input<String>? nodeUserData;
  /// The set of private subnets to use for the worker node groups on the EKS cluster. These subnets are automatically tagged by EKS for Kubernetes purposes.
  ///
  /// If `vpcId` is not set, the cluster will use the AWS account's default VPC subnets.
  ///
  /// Worker network architecture options:
  /// - Private-only: Only set `privateSubnetIds`.
  /// - Default workers to run in a private subnet. In this setting, Kubernetes cannot create public, internet-facing load balancers for your pods.
  /// - Public-only: Only set `publicSubnetIds`.
  /// - Default workers to run in a public subnet.
  /// - Mixed (recommended): Set both `privateSubnetIds` and `publicSubnetIds`.
  /// - Default all worker nodes to run in private subnets, and use the public subnets for internet-facing load balancers.
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html.Note: The use of `subnetIds`, along with `publicSubnetIds` and/or `privateSubnetIds` is mutually exclusive. The use of `publicSubnetIds` and `privateSubnetIds` is encouraged.
  ///
  /// Also consider setting `nodeAssociatePublicIpAddress: false` for fully private workers.
  final pulumi.Input<List<String>>? privateSubnetIds;
  /// The AWS provider credential options to scope the cluster's kubeconfig authentication when using a non-default credential chain.
  ///
  /// This is required for certain auth scenarios. For example:
  /// - Creating and using a new AWS provider instance, or
  /// - Setting the AWS_PROFILE environment variable, or
  /// - Using a named profile configured on the AWS provider via:
  /// `pulumi config set aws:profile &lt;profileName&gt;`
  ///
  /// See for more details:
  /// - https://www.pulumi.com/registry/packages/aws/api-docs/provider/
  /// - https://www.pulumi.com/docs/intro/cloud-providers/aws/setup/
  /// - https://www.pulumi.com/docs/intro/cloud-providers/aws/#configuration
  /// - https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
  final pulumi.Input<KubeconfigOptions>? providerCredentialOpts;
  /// The HTTP(S) proxy to use within a proxied environment.
  ///
  /// The proxy is used during cluster creation, and OIDC configuration.
  ///
  /// This is an alternative option to setting the proxy environment variables: HTTP(S)_PROXY and/or http(s)_proxy.
  ///
  /// This option is required iff the proxy environment variables are not set.
  ///
  /// Format:      &lt;protocol&gt;://&lt;host&gt;:&lt;port&gt;
  /// Auth Format: &lt;protocol&gt;://&lt;username&gt;:&lt;password&gt;@&lt;host&gt;:&lt;port&gt;
  ///
  /// Ex:
  /// - "http://proxy.example.com:3128"
  /// - "https://proxy.example.com"
  /// - "http://username:password@proxy.example.com:3128"
  final pulumi.Input<String>? proxy;
  /// Indicates which CIDR blocks can access the Amazon EKS public API server endpoint.
  final pulumi.Input<List<String>>? publicAccessCidrs;
  /// The set of public subnets to use for the worker node groups on the EKS cluster. These subnets are automatically tagged by EKS for Kubernetes purposes.
  ///
  /// If `vpcId` is not set, the cluster will use the AWS account's default VPC subnets.
  ///
  /// Worker network architecture options:
  /// - Private-only: Only set `privateSubnetIds`.
  /// - Default workers to run in a private subnet. In this setting, Kubernetes cannot create public, internet-facing load balancers for your pods.
  /// - Public-only: Only set `publicSubnetIds`.
  /// - Default workers to run in a public subnet.
  /// - Mixed (recommended): Set both `privateSubnetIds` and `publicSubnetIds`.
  /// - Default all worker nodes to run in private subnets, and use the public subnets for internet-facing load balancers.
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html.Note: The use of `subnetIds`, along with `publicSubnetIds` and/or `privateSubnetIds` is mutually exclusive. The use of `publicSubnetIds` and `privateSubnetIds` is encouraged.
  final pulumi.Input<List<String>>? publicSubnetIds;
  /// Optional mappings from AWS IAM roles to Kubernetes users and groups. Only supported with authentication mode `CONFIG_MAP` or `API_AND_CONFIG_MAP`
  final pulumi.Input<List<RoleMapping>>? roleMappings;
  /// IAM Service Role for EKS to use to manage the cluster.
  final pulumi.Input<pulumi_aws_iam.Role>? serviceRole;
  /// If this toggle is set to true, the EKS cluster will be created without node group attached. Defaults to false, unless `fargate` or `autoMode` is enabled.
  final pulumi.Input<bool>? skipDefaultNodeGroup;
  /// If this toggle is set to true, the EKS cluster will be created without the default node and cluster security groups. Defaults to false, unless `autoMode` is enabled.
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
  final pulumi.Input<bool>? skipDefaultSecurityGroups;
  /// An optional set of StorageClasses to enable for the cluster. If this is a single volume type rather than a map, a single StorageClass will be created for that volume type.
  ///
  /// Note: As of Kubernetes v1.11+ on EKS, a default `gp2` storage class will always be created automatically for the cluster by the EKS service. See https://docs.aws.amazon.com/eks/latest/userguide/storage-classes.html
  final pulumi.Input<String>? storageClasses;
  /// The set of all subnets, public and private, to use for the worker node groups on the EKS cluster. These subnets are automatically tagged by EKS for Kubernetes purposes.
  ///
  /// If `vpcId` is not set, the cluster will use the AWS account's default VPC subnets.
  ///
  /// If the list of subnets includes both public and private subnets, the worker nodes will only be attached to the private subnets, and the public subnets will be used for internet-facing load balancers.
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html.
  ///
  /// Note: The use of `subnetIds`, along with `publicSubnetIds` and/or `privateSubnetIds` is mutually exclusive. The use of `publicSubnetIds` and `privateSubnetIds` is encouraged.
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value mapping of tags that are automatically applied to all AWS resources directly under management with this cluster, which support tagging.
  final pulumi.Input<Map<String, String>>? tags;
  /// The cluster's upgrade policy. Valid support types are "STANDARD" and "EXTENDED". Defaults to "EXTENDED".
  final pulumi.Input<pulumi_aws_eks.ClusterUpgradePolicy>? upgradePolicy;
  /// Use the default VPC CNI instead of creating a custom one. Should not be used in conjunction with `vpcCniOptions`.
  /// Defaults to true, unless `autoMode` is enabled.
  final pulumi.Input<bool>? useDefaultVpcCni;
  /// Optional mappings from AWS IAM users to Kubernetes users and groups. Only supported with authentication mode `CONFIG_MAP` or `API_AND_CONFIG_MAP`.
  final pulumi.Input<List<UserMapping>>? userMappings;
  /// Desired Kubernetes master / control plane version. If you do not specify a value, the latest available version is used.
  final pulumi.Input<String>? version;
  /// The configuration of the Amazon VPC CNI plugin for this instance. Defaults are described in the documentation for the VpcCniOptions type.
  final pulumi.Input<VpcCniOptions>? vpcCniOptions;
  /// The VPC in which to create the cluster and its worker nodes. If unset, the cluster will be created in the default VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ClusterArgs].
  /// [accessEntries] Access entries to add to the EKS cluster. They can be used to allow IAM principals to access the cluster. Access entries are only supported with authentication mode `API` or `API_AND_CONFIG_MAP`.
  /// [authenticationMode] The authentication mode of the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`.
  /// [autoMode] Configuration Options for EKS Auto Mode. If EKS Auto Mode is enabled, AWS will manage cluster infrastructure on your behalf.
  /// [bootstrapSelfManagedAddons] Install default unmanaged add-ons, such as `aws-cni`, `kube-proxy`, and CoreDNS during cluster creation. If `false`, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to `true`
  /// [clusterSecurityGroup] The security group to use for the cluster API endpoint. If not provided, a new security group will be created with full internet egress and ingress from node groups.
  /// [clusterSecurityGroupTags] The tags to apply to the cluster security group.
  /// [clusterTags] The tags to apply to the EKS cluster.
  /// [corednsAddonOptions] Options for managing the `coredns` addon.
  /// [createInstanceRole] Whether to create the instance role for the EKS cluster. Defaults to true when using the default node group, false otherwise.
  /// [createOidcProvider] Indicates whether an IAM OIDC Provider is created for the EKS cluster.
  /// [creationRoleProvider] The IAM Role Provider used to create & authenticate against the EKS cluster. This role is given `[system:masters]` permission in K8S, See: https://docs.aws.amazon.com/eks/latest/userguide/add-user-role.html
  /// [deletionProtection] Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: `false`.
  /// [desiredCapacity] The number of worker nodes that should be running in the cluster. Defaults to 2.
  /// [enableConfigMapMutable] Sets the 'enableConfigMapMutable' option on the cluster kubernetes provider.
  /// [enabledClusterLogTypes] Enable EKS control plane logging. This sends logs to cloudwatch. Possible list of values are: ["api", "audit", "authenticator", "controllerManager", "scheduler"]. By default it is off.
  /// [encryptionConfigKeyArn] KMS Key ARN to use with the encryption configuration for the cluster.
  /// [endpointPrivateAccess] Indicates whether or not the Amazon EKS private API server endpoint is enabled. Default is `false`.
  /// [endpointPublicAccess] Indicates whether or not the Amazon EKS public API server endpoint is enabled. Default is `true`.
  /// [fargate] Add support for launching pods in Fargate. Defaults to launching pods in the `default` namespace.  If specified, the default node group is skipped as though `skipDefaultNodeGroup: true` had been passed.
  /// [gpu] Use the latest recommended EKS Optimized Linux AMI with GPU support for the worker nodes from the AWS Systems Manager Parameter Store.
  /// [instanceProfileName] The default IAM InstanceProfile to use on the Worker NodeGroups, if one is not already set in the NodeGroup.
  /// [instanceRole] This enables the simple case of only registering a *single* IAM instance role with the cluster, that is required to be shared by *all* node groups in their instance profiles.
  /// [instanceRoles] This enables the advanced case of registering *many* IAM instance roles with the cluster for per node group IAM, instead of the simpler, shared case of `instanceRole`.
  /// [instanceType] The instance type to use for the cluster's nodes. Defaults to "t3.medium".
  /// [ipFamily] The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`.
  /// [kubeProxyAddonOptions] Options for managing the `kube-proxy` addon.
  /// [kubernetesServiceIpAddressRange] The CIDR block to assign Kubernetes service IP addresses from. If you don't
  /// [maxSize] The maximum number of worker nodes running in the cluster. Defaults to 2.
  /// [minSize] The minimum number of worker nodes running in the cluster. Defaults to 1.
  /// [name] The cluster's physical resource name.
  /// [nodeAmiId] The AMI ID to use for the worker nodes.
  /// [nodeAssociatePublicIpAddress] Whether or not to auto-assign the EKS worker nodes public IP addresses. If this toggle is set to true, the EKS workers will be auto-assigned public IPs. If false, they will not be auto-assigned public IPs.
  /// [nodeGroupOptions] The common configuration settings for NodeGroups.
  /// [nodePublicKey] Public key material for SSH access to worker nodes. See allowed formats at:
  /// [nodeRootVolumeEncrypted] Encrypt the root block device of the nodes in the node group.
  /// [nodeRootVolumeSize] The size in GiB of a cluster node's root volume. Defaults to 20.
  /// [nodeSecurityGroupTags] The tags to apply to the default `nodeSecurityGroup` created by the cluster.
  /// [nodeSubnetIds] The subnets to use for worker nodes. Defaults to the value of subnetIds.
  /// [nodeUserData] Extra code to run on node startup. This code will run after the AWS EKS bootstrapping code and before the node signals its readiness to the managing CloudFormation stack. This code must be a typical user data script: critically it must begin with an interpreter directive (i.e. a `#!`).
  /// [privateSubnetIds] The set of private subnets to use for the worker node groups on the EKS cluster. These subnets are automatically tagged by EKS for Kubernetes purposes.
  /// [providerCredentialOpts] The AWS provider credential options to scope the cluster's kubeconfig authentication when using a non-default credential chain.
  /// [proxy] The HTTP(S) proxy to use within a proxied environment.
  /// [publicAccessCidrs] Indicates which CIDR blocks can access the Amazon EKS public API server endpoint.
  /// [publicSubnetIds] The set of public subnets to use for the worker node groups on the EKS cluster. These subnets are automatically tagged by EKS for Kubernetes purposes.
  /// [roleMappings] Optional mappings from AWS IAM roles to Kubernetes users and groups. Only supported with authentication mode `CONFIG_MAP` or `API_AND_CONFIG_MAP`
  /// [serviceRole] IAM Service Role for EKS to use to manage the cluster.
  /// [skipDefaultNodeGroup] If this toggle is set to true, the EKS cluster will be created without node group attached. Defaults to false, unless `fargate` or `autoMode` is enabled.
  /// [skipDefaultSecurityGroups] If this toggle is set to true, the EKS cluster will be created without the default node and cluster security groups. Defaults to false, unless `autoMode` is enabled.
  /// [storageClasses] An optional set of StorageClasses to enable for the cluster. If this is a single volume type rather than a map, a single StorageClass will be created for that volume type.
  /// [subnetIds] The set of all subnets, public and private, to use for the worker node groups on the EKS cluster. These subnets are automatically tagged by EKS for Kubernetes purposes.
  /// [tags] Key-value mapping of tags that are automatically applied to all AWS resources directly under management with this cluster, which support tagging.
  /// [upgradePolicy] The cluster's upgrade policy. Valid support types are "STANDARD" and "EXTENDED". Defaults to "EXTENDED".
  /// [useDefaultVpcCni] Use the default VPC CNI instead of creating a custom one. Should not be used in conjunction with `vpcCniOptions`.
  /// [userMappings] Optional mappings from AWS IAM users to Kubernetes users and groups. Only supported with authentication mode `CONFIG_MAP` or `API_AND_CONFIG_MAP`.
  /// [version] Desired Kubernetes master / control plane version. If you do not specify a value, the latest available version is used.
  /// [vpcCniOptions] The configuration of the Amazon VPC CNI plugin for this instance. Defaults are described in the documentation for the VpcCniOptions type.
  /// [vpcId] The VPC in which to create the cluster and its worker nodes. If unset, the cluster will be created in the default VPC.
  const ClusterArgs({
    this.accessEntries,
    this.authenticationMode,
    this.autoMode,
    this.bootstrapSelfManagedAddons,
    this.clusterSecurityGroup,
    this.clusterSecurityGroupTags,
    this.clusterTags,
    this.corednsAddonOptions,
    this.createInstanceRole,
    this.createOidcProvider,
    this.creationRoleProvider,
    this.deletionProtection,
    this.desiredCapacity,
    this.enableConfigMapMutable,
    this.enabledClusterLogTypes,
    this.encryptionConfigKeyArn,
    this.endpointPrivateAccess,
    this.endpointPublicAccess,
    this.fargate,
    this.gpu,
    this.instanceProfileName,
    this.instanceRole,
    this.instanceRoles,
    this.instanceType,
    this.ipFamily,
    this.kubeProxyAddonOptions,
    this.kubernetesServiceIpAddressRange,
    this.maxSize,
    this.minSize,
    this.name,
    this.nodeAmiId,
    this.nodeAssociatePublicIpAddress,
    this.nodeGroupOptions,
    this.nodePublicKey,
    this.nodeRootVolumeEncrypted,
    this.nodeRootVolumeSize,
    this.nodeSecurityGroupTags,
    this.nodeSubnetIds,
    this.nodeUserData,
    this.privateSubnetIds,
    this.providerCredentialOpts,
    this.proxy,
    this.publicAccessCidrs,
    this.publicSubnetIds,
    this.roleMappings,
    this.serviceRole,
    this.skipDefaultNodeGroup,
    this.skipDefaultSecurityGroups,
    this.storageClasses,
    this.subnetIds,
    this.tags,
    this.upgradePolicy,
    this.useDefaultVpcCni,
    this.userMappings,
    this.version,
    this.vpcCniOptions,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEntries': ?pulumi.Input.mapOptionalInputValue<Map<String, AccessEntry>, Map<String, Map<String, dynamic>>>(accessEntries, (value) => pulumi.Input.encodeMapValues<AccessEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authenticationMode': ?pulumi.Input.mapOptionalInputValue<AuthenticationMode, String>(authenticationMode, (value) => value.wireValue),
      'autoMode': ?pulumi.Input.mapOptionalInputValue<AutoModeOptions, Map<String, dynamic>>(autoMode, (value) => value.toMap()),
      'bootstrapSelfManagedAddons': ?bootstrapSelfManagedAddons,
      'clusterSecurityGroup': ?clusterSecurityGroup,
      'clusterSecurityGroupTags': ?clusterSecurityGroupTags,
      'clusterTags': ?clusterTags,
      'corednsAddonOptions': ?pulumi.Input.mapOptionalInputValue<CoreDnsAddonOptions, Map<String, dynamic>>(corednsAddonOptions, (value) => value.toMap()),
      'createInstanceRole': ?createInstanceRole,
      'createOidcProvider': ?createOidcProvider,
      'creationRoleProvider': ?pulumi.Input.mapOptionalInputValue<CreationRoleProvider, Map<String, dynamic>>(creationRoleProvider, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'desiredCapacity': ?desiredCapacity,
      'enableConfigMapMutable': ?enableConfigMapMutable,
      'enabledClusterLogTypes': ?enabledClusterLogTypes,
      'encryptionConfigKeyArn': ?encryptionConfigKeyArn,
      'endpointPrivateAccess': ?endpointPrivateAccess,
      'endpointPublicAccess': ?endpointPublicAccess,
      'fargate': ?fargate,
      'gpu': ?gpu,
      'instanceProfileName': ?instanceProfileName,
      'instanceRole': ?instanceRole,
      'instanceRoles': ?instanceRoles,
      'instanceType': ?instanceType,
      'ipFamily': ?ipFamily,
      'kubeProxyAddonOptions': ?pulumi.Input.mapOptionalInputValue<KubeProxyAddonOptions, Map<String, dynamic>>(kubeProxyAddonOptions, (value) => value.toMap()),
      'kubernetesServiceIpAddressRange': ?kubernetesServiceIpAddressRange,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'name': ?name,
      'nodeAmiId': ?nodeAmiId,
      'nodeAssociatePublicIpAddress': ?nodeAssociatePublicIpAddress,
      'nodeGroupOptions': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupOptions, Map<String, dynamic>>(nodeGroupOptions, (value) => value.toMap()),
      'nodePublicKey': ?nodePublicKey,
      'nodeRootVolumeEncrypted': ?nodeRootVolumeEncrypted,
      'nodeRootVolumeSize': ?nodeRootVolumeSize,
      'nodeSecurityGroupTags': ?nodeSecurityGroupTags,
      'nodeSubnetIds': ?nodeSubnetIds,
      'nodeUserData': ?nodeUserData,
      'privateSubnetIds': ?privateSubnetIds,
      'providerCredentialOpts': ?pulumi.Input.mapOptionalInputValue<KubeconfigOptions, Map<String, dynamic>>(providerCredentialOpts, (value) => value.toMap()),
      'proxy': ?proxy,
      'publicAccessCidrs': ?publicAccessCidrs,
      'publicSubnetIds': ?publicSubnetIds,
      'roleMappings': ?pulumi.Input.mapOptionalInputValue<List<RoleMapping>, List<Map<String, dynamic>>>(roleMappings, (value) => pulumi.Input.encodeList<RoleMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceRole': ?serviceRole,
      'skipDefaultNodeGroup': ?skipDefaultNodeGroup,
      'skipDefaultSecurityGroups': ?skipDefaultSecurityGroups,
      'storageClasses': ?storageClasses,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_eks.ClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'useDefaultVpcCni': ?useDefaultVpcCni,
      'userMappings': ?pulumi.Input.mapOptionalInputValue<List<UserMapping>, List<Map<String, dynamic>>>(userMappings, (value) => pulumi.Input.encodeList<UserMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
      'vpcCniOptions': ?pulumi.Input.mapOptionalInputValue<VpcCniOptions, Map<String, dynamic>>(vpcCniOptions, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      accessEntries: (() { final guardedValue = map['accessEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<AccessEntry>(guardedValue, (value) => AccessEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationMode.fromValue(guardedValue as String)); })(),
      autoMode: (() { final guardedValue = map['autoMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoModeOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootstrapSelfManagedAddons: (() { final guardedValue = map['bootstrapSelfManagedAddons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterSecurityGroup: (() { final guardedValue = map['clusterSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_ec2.SecurityGroup); })(),
      clusterSecurityGroupTags: (() { final guardedValue = map['clusterSecurityGroupTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      clusterTags: (() { final guardedValue = map['clusterTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      corednsAddonOptions: (() { final guardedValue = map['corednsAddonOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CoreDnsAddonOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createInstanceRole: (() { final guardedValue = map['createInstanceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createOidcProvider: (() { final guardedValue = map['createOidcProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      creationRoleProvider: (() { final guardedValue = map['creationRoleProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreationRoleProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      desiredCapacity: (() { final guardedValue = map['desiredCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableConfigMapMutable: (() { final guardedValue = map['enableConfigMapMutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledClusterLogTypes: (() { final guardedValue = map['enabledClusterLogTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      encryptionConfigKeyArn: (() { final guardedValue = map['encryptionConfigKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointPrivateAccess: (() { final guardedValue = map['endpointPrivateAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointPublicAccess: (() { final guardedValue = map['endpointPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fargate: (() { final guardedValue = map['fargate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceProfileName: (() { final guardedValue = map['instanceProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRole: (() { final guardedValue = map['instanceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_iam.Role); })(),
      instanceRoles: (() { final guardedValue = map['instanceRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<pulumi_aws_iam.Role>()); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipFamily: (() { final guardedValue = map['ipFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeProxyAddonOptions: (() { final guardedValue = map['kubeProxyAddonOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubeProxyAddonOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesServiceIpAddressRange: (() { final guardedValue = map['kubernetesServiceIpAddressRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeAmiId: (() { final guardedValue = map['nodeAmiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeAssociatePublicIpAddress: (() { final guardedValue = map['nodeAssociatePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodeGroupOptions: (() { final guardedValue = map['nodeGroupOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePublicKey: (() { final guardedValue = map['nodePublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeRootVolumeEncrypted: (() { final guardedValue = map['nodeRootVolumeEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodeRootVolumeSize: (() { final guardedValue = map['nodeRootVolumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeSecurityGroupTags: (() { final guardedValue = map['nodeSecurityGroupTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeSubnetIds: (() { final guardedValue = map['nodeSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeUserData: (() { final guardedValue = map['nodeUserData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateSubnetIds: (() { final guardedValue = map['privateSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      providerCredentialOpts: (() { final guardedValue = map['providerCredentialOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubeconfigOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicAccessCidrs: (() { final guardedValue = map['publicAccessCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicSubnetIds: (() { final guardedValue = map['publicSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roleMappings: (() { final guardedValue = map['roleMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoleMapping>(guardedValue, (value) => RoleMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_iam.Role); })(),
      skipDefaultNodeGroup: (() { final guardedValue = map['skipDefaultNodeGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipDefaultSecurityGroups: (() { final guardedValue = map['skipDefaultSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageClasses: (() { final guardedValue = map['storageClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradePolicy: (() { final guardedValue = map['upgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_eks.ClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useDefaultVpcCni: (() { final guardedValue = map['useDefaultVpcCni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userMappings: (() { final guardedValue = map['userMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserMapping>(guardedValue, (value) => UserMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcCniOptions: (() { final guardedValue = map['vpcCniOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcCniOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
