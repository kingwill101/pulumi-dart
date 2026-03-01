// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster.dart';
import 'nodeadm_options.dart';
import 'operating_system.dart';
import 'taint.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// {@template pulumi_index_node_group_v2_args_doc}
/// The set of arguments for NodeGroupV2.
/// {@endtemplate}
/// {@macro pulumi_index_node_group_v2_args_doc}
class NodeGroupV2Args {
  /// The AMI ID to use for the worker nodes.
  ///
  /// Defaults to the latest recommended EKS Optimized Linux AMI from the AWS Systems Manager Parameter Store.
  ///
  /// Note: `amiId` and `gpu` are mutually exclusive.
  ///
  /// See for more details:
  /// - https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html.
  final pulumi.Input<String>? amiId;
  /// The AMI Type to use for the worker nodes.
  ///
  /// Only applicable when setting an AMI ID that is of type `arm64`.
  ///
  /// Note: `amiType` and `gpu` are mutually exclusive.
  final pulumi.Input<String>? amiType;
  /// The tags to apply to the NodeGroup's AutoScalingGroup in the CloudFormation Stack.
  ///
  /// Per AWS, all stack-level tags, including automatically created tags, and the `cloudFormationTags` option are propagated to resources that AWS CloudFormation supports, including the AutoScalingGroup. See https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html
  ///
  /// Note: Given the inheritance of auto-generated CF tags and `cloudFormationTags`, you should either supply the tag in `autoScalingGroupTags` or `cloudFormationTags`, but not both.
  final pulumi.Input<Map<String, String>>? autoScalingGroupTags;
  /// Additional args to pass directly to `/etc/eks/bootstrap.sh`. For details on available options, see: https://github.com/awslabs/amazon-eks-ami/blob/master/files/bootstrap.sh. Note that the `--apiserver-endpoint`, `--b64-cluster-ca` and `--kubelet-extra-args` flags are included automatically based on other configuration parameters.
  final pulumi.Input<String>? bootstrapExtraArgs;
  /// The configuration settings for Bottlerocket OS.
  /// The settings will get merged with the base settings the provider uses to configure Bottlerocket.
  ///
  /// This includes:
  /// - settings.kubernetes.api-server
  /// - settings.kubernetes.cluster-certificate
  /// - settings.kubernetes.cluster-name
  /// - settings.kubernetes.cluster-dns-ip
  ///
  /// For an overview of the available settings, see https://bottlerocket.dev/en/os/1.20.x/api/settings/.
  final pulumi.Input<Map<String, dynamic>>? bottlerocketSettings;
  /// The tags to apply to the CloudFormation Stack of the Worker NodeGroup.
  ///
  /// Note: Given the inheritance of auto-generated CF tags and `cloudFormationTags`, you should either supply the tag in `autoScalingGroupTags` or `cloudFormationTags`, but not both.
  final pulumi.Input<Map<String, String>>? cloudFormationTags;
  /// The target EKS cluster.
  final pulumi.Input<Cluster> cluster;
  /// The ingress rule that gives node group access.
  final pulumi.Input<pulumi_aws_ec2.SecurityGroupRule>? clusterIngressRule;
  /// The ID of the ingress rule that gives node group access.
  final pulumi.Input<String>? clusterIngressRuleId;
  /// The number of worker nodes that should be running in the cluster. Defaults to 2.
  final pulumi.Input<int>? desiredCapacity;
  /// Enables/disables detailed monitoring of the EC2 instances.
  ///
  /// With detailed monitoring, all metrics, including status check metrics, are available in 1-minute intervals.
  /// When enabled, you can also get aggregated data across groups of similar instances.
  ///
  /// Note: You are charged per metric that is sent to CloudWatch. You are not charged for data storage.
  /// For more information, see "Paid tier" and "Example 1 - EC2 Detailed Monitoring" here https://aws.amazon.com/cloudwatch/pricing/.
  final pulumi.Input<bool>? enableDetailedMonitoring;
  /// Encrypt the root block device of the nodes in the node group.
  final pulumi.Input<bool>? encryptRootBlockDevice;
  /// Extra security groups to attach on all nodes in this worker node group.
  ///
  /// This additional set of security groups captures any user application rules that will be needed for the nodes.
  final pulumi.Input<List<pulumi_aws_ec2.SecurityGroup>>? extraNodeSecurityGroups;
  /// Use the latest recommended EKS Optimized Linux AMI with GPU support for the worker nodes from the AWS Systems Manager Parameter Store.
  ///
  /// Defaults to false.
  ///
  /// Note: `gpu` and `amiId` are mutually exclusive.
  ///
  /// See for more details:
  /// - https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html
  /// - https://docs.aws.amazon.com/eks/latest/userguide/retrieve-ami-id.html
  final pulumi.Input<bool>? gpu;
  /// Whether to ignore changes to the desired size of the Auto Scaling Group. This is useful when using Cluster Autoscaler.
  ///
  /// See [EKS best practices](https://aws.github.io/aws-eks-best-practices/cluster-autoscaling/) for more details.
  final pulumi.Input<bool>? ignoreScalingChanges;
  /// The IAM InstanceProfile to use on the NodeGroup. Properties instanceProfile and instanceProfileName are mutually exclusive.
  final pulumi.Input<pulumi_aws_iam.InstanceProfile>? instanceProfile;
  /// The name of the IAM InstanceProfile to use on the NodeGroup. Properties instanceProfile and instanceProfileName are mutually exclusive.
  final pulumi.Input<String>? instanceProfileName;
  /// The instance type to use for the cluster's nodes. Defaults to "t3.medium".
  final pulumi.Input<String>? instanceType;
  /// Name of the key pair to use for SSH access to worker nodes.
  final pulumi.Input<String>? keyName;
  /// Extra args to pass to the Kubelet. Corresponds to the options passed in the `--kubeletExtraArgs` flag to `/etc/eks/bootstrap.sh`. For example, '--port=10251 --address=0.0.0.0'. Note that the `labels` and `taints` properties will be applied to this list (using `--node-labels` and `--register-with-taints` respectively) after to the explicit `kubeletExtraArgs`.
  final pulumi.Input<String>? kubeletExtraArgs;
  /// Custom k8s node labels to be attached to each worker node. Adds the given key/value pairs to the `--node-labels` kubelet argument.
  final pulumi.Input<Map<String, String>>? labels;
  /// The tag specifications to apply to the launch template.
  final pulumi.Input<List<pulumi_aws_ec2.LaunchTemplateTagSpecification>>? launchTemplateTagSpecifications;
  /// The maximum number of worker nodes running in the cluster. Defaults to 2.
  final pulumi.Input<int>? maxSize;
  /// The minimum amount of instances that should remain available during an instance refresh, expressed as a percentage. Defaults to 50.
  final pulumi.Input<int>? minRefreshPercentage;
  /// The minimum number of worker nodes running in the cluster. Defaults to 1.
  final pulumi.Input<int>? minSize;
  /// Whether or not to auto-assign public IP addresses on the EKS worker nodes. If this toggle is set to true, the EKS workers will be auto-assigned public IPs. If false, they will not be auto-assigned public IPs.
  final pulumi.Input<bool>? nodeAssociatePublicIpAddress;
  /// Public key material for SSH access to worker nodes. See allowed formats at:
  /// https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
  /// If not provided, no SSH access is enabled on VMs.
  final pulumi.Input<String>? nodePublicKey;
  /// Whether the root block device should be deleted on termination of the instance. Defaults to true.
  final pulumi.Input<bool>? nodeRootVolumeDeleteOnTermination;
  /// Whether to encrypt a cluster node's root volume. Defaults to false.
  final pulumi.Input<bool>? nodeRootVolumeEncrypted;
  /// The amount of provisioned IOPS. This is only valid with a volumeType of 'io1'.
  final pulumi.Input<int>? nodeRootVolumeIops;
  /// The size in GiB of a cluster node's root volume. Defaults to 20.
  final pulumi.Input<int>? nodeRootVolumeSize;
  /// Provisioned throughput performance in integer MiB/s for a cluster node's root volume. This is only valid with a volumeType of 'gp3'.
  final pulumi.Input<int>? nodeRootVolumeThroughput;
  /// Configured EBS type for a cluster node's root volume. Default is 'gp2'. Supported values are 'standard', 'gp2', 'gp3', 'st1', 'sc1', 'io1'.
  final pulumi.Input<String>? nodeRootVolumeType;
  /// The security group for the worker node group to communicate with the cluster.
  ///
  /// This security group requires specific inbound and outbound rules.
  ///
  /// See for more details:
  /// https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
  ///
  /// Note: The `nodeSecurityGroup` option and the cluster option`nodeSecurityGroupTags` are mutually exclusive.
  final pulumi.Input<pulumi_aws_ec2.SecurityGroup>? nodeSecurityGroup;
  /// The ID of the security group for the worker node group to communicate with the cluster.
  ///
  /// This security group requires specific inbound and outbound rules.
  ///
  /// See for more details:
  /// https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html
  ///
  /// Note: The `nodeSecurityGroupId` option and the cluster option `nodeSecurityGroupTags` are mutually exclusive.
  final pulumi.Input<String>? nodeSecurityGroupId;
  /// The set of subnets to override and use for the worker node group.
  ///
  /// Setting this option overrides which subnets to use for the worker node group, regardless if the cluster's `subnetIds` is set, or if `publicSubnetIds` and/or `privateSubnetIds` were set.
  final pulumi.Input<List<String>>? nodeSubnetIds;
  /// Extra code to run on node startup. This code will run after the AWS EKS bootstrapping code and before the node signals its readiness to the managing CloudFormation stack. This code must be a typical user data script: critically it must begin with an interpreter directive (i.e. a `#!`).
  final pulumi.Input<String>? nodeUserData;
  /// User specified code to run on node startup. This code is expected to handle the full AWS EKS bootstrapping code and signal node readiness to the managing CloudFormation stack. This code must be a complete and executable user data script in bash (Linux) or powershell (Windows).
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/worker.html
  final pulumi.Input<String>? nodeUserDataOverride;
  /// Extra nodeadm configuration sections to be added to the nodeadm user data. This can be shell scripts, nodeadm NodeConfig or any other user data compatible script. When configuring additional nodeadm NodeConfig sections, they'll be merged with the base settings the provider sets. You can overwrite base settings or provide additional settings this way.
  /// The base settings the provider sets are:
  /// - cluster.name
  /// - cluster.apiServerEndpoint
  /// - cluster.certificateAuthority
  /// - cluster.cidr
  ///
  /// Note: This is only applicable when using AL2023.
  /// See for more details:
  /// - https://awslabs.github.io/amazon-eks-ami/nodeadm/
  /// - https://awslabs.github.io/amazon-eks-ami/nodeadm/doc/api/
  final pulumi.Input<List<NodeadmOptions>>? nodeadmExtraOptions;
  /// The type of OS to use for the node group. Will be used to determine the right EKS optimized AMI to use based on the instance types and gpu configuration.
  /// Valid values are `RECOMMENDED`, `AL2`, `AL2023` and `Bottlerocket`.
  ///
  /// Defaults to the current recommended OS.
  final pulumi.Input<OperatingSystem>? operatingSystem;
  /// Bidding price for spot instance. If set, only spot instances will be added as worker node.
  final pulumi.Input<String>? spotPrice;
  /// Custom k8s node taints to be attached to each worker node. Adds the given taints to the `--register-with-taints` kubelet argument
  final pulumi.Input<Map<String, Taint>>? taints;
  /// Desired Kubernetes master / control plane version. If you do not specify a value, the latest available version is used.
  final pulumi.Input<String>? version;

  /// Creates a new [NodeGroupV2Args].
  /// [amiId] The AMI ID to use for the worker nodes.
  /// [amiType] The AMI Type to use for the worker nodes.
  /// [autoScalingGroupTags] The tags to apply to the NodeGroup's AutoScalingGroup in the CloudFormation Stack.
  /// [bootstrapExtraArgs] Additional args to pass directly to `/etc/eks/bootstrap.sh`. For details on available options, see: https://github.com/awslabs/amazon-eks-ami/blob/master/files/bootstrap.sh. Note that the `--apiserver-endpoint`, `--b64-cluster-ca` and `--kubelet-extra-args` flags are included automatically based on other configuration parameters.
  /// [bottlerocketSettings] The configuration settings for Bottlerocket OS.
  /// [cloudFormationTags] The tags to apply to the CloudFormation Stack of the Worker NodeGroup.
  /// [cluster] The target EKS cluster.
  /// [clusterIngressRule] The ingress rule that gives node group access.
  /// [clusterIngressRuleId] The ID of the ingress rule that gives node group access.
  /// [desiredCapacity] The number of worker nodes that should be running in the cluster. Defaults to 2.
  /// [enableDetailedMonitoring] Enables/disables detailed monitoring of the EC2 instances.
  /// [encryptRootBlockDevice] Encrypt the root block device of the nodes in the node group.
  /// [extraNodeSecurityGroups] Extra security groups to attach on all nodes in this worker node group.
  /// [gpu] Use the latest recommended EKS Optimized Linux AMI with GPU support for the worker nodes from the AWS Systems Manager Parameter Store.
  /// [ignoreScalingChanges] Whether to ignore changes to the desired size of the Auto Scaling Group. This is useful when using Cluster Autoscaler.
  /// [instanceProfile] The IAM InstanceProfile to use on the NodeGroup. Properties instanceProfile and instanceProfileName are mutually exclusive.
  /// [instanceProfileName] The name of the IAM InstanceProfile to use on the NodeGroup. Properties instanceProfile and instanceProfileName are mutually exclusive.
  /// [instanceType] The instance type to use for the cluster's nodes. Defaults to "t3.medium".
  /// [keyName] Name of the key pair to use for SSH access to worker nodes.
  /// [kubeletExtraArgs] Extra args to pass to the Kubelet. Corresponds to the options passed in the `--kubeletExtraArgs` flag to `/etc/eks/bootstrap.sh`. For example, '--port=10251 --address=0.0.0.0'. Note that the `labels` and `taints` properties will be applied to this list (using `--node-labels` and `--register-with-taints` respectively) after to the explicit `kubeletExtraArgs`.
  /// [labels] Custom k8s node labels to be attached to each worker node. Adds the given key/value pairs to the `--node-labels` kubelet argument.
  /// [launchTemplateTagSpecifications] The tag specifications to apply to the launch template.
  /// [maxSize] The maximum number of worker nodes running in the cluster. Defaults to 2.
  /// [minRefreshPercentage] The minimum amount of instances that should remain available during an instance refresh, expressed as a percentage. Defaults to 50.
  /// [minSize] The minimum number of worker nodes running in the cluster. Defaults to 1.
  /// [nodeAssociatePublicIpAddress] Whether or not to auto-assign public IP addresses on the EKS worker nodes. If this toggle is set to true, the EKS workers will be auto-assigned public IPs. If false, they will not be auto-assigned public IPs.
  /// [nodePublicKey] Public key material for SSH access to worker nodes. See allowed formats at:
  /// [nodeRootVolumeDeleteOnTermination] Whether the root block device should be deleted on termination of the instance. Defaults to true.
  /// [nodeRootVolumeEncrypted] Whether to encrypt a cluster node's root volume. Defaults to false.
  /// [nodeRootVolumeIops] The amount of provisioned IOPS. This is only valid with a volumeType of 'io1'.
  /// [nodeRootVolumeSize] The size in GiB of a cluster node's root volume. Defaults to 20.
  /// [nodeRootVolumeThroughput] Provisioned throughput performance in integer MiB/s for a cluster node's root volume. This is only valid with a volumeType of 'gp3'.
  /// [nodeRootVolumeType] Configured EBS type for a cluster node's root volume. Default is 'gp2'. Supported values are 'standard', 'gp2', 'gp3', 'st1', 'sc1', 'io1'.
  /// [nodeSecurityGroup] The security group for the worker node group to communicate with the cluster.
  /// [nodeSecurityGroupId] The ID of the security group for the worker node group to communicate with the cluster.
  /// [nodeSubnetIds] The set of subnets to override and use for the worker node group.
  /// [nodeUserData] Extra code to run on node startup. This code will run after the AWS EKS bootstrapping code and before the node signals its readiness to the managing CloudFormation stack. This code must be a typical user data script: critically it must begin with an interpreter directive (i.e. a `#!`).
  /// [nodeUserDataOverride] User specified code to run on node startup. This code is expected to handle the full AWS EKS bootstrapping code and signal node readiness to the managing CloudFormation stack. This code must be a complete and executable user data script in bash (Linux) or powershell (Windows).
  /// [nodeadmExtraOptions] Extra nodeadm configuration sections to be added to the nodeadm user data. This can be shell scripts, nodeadm NodeConfig or any other user data compatible script. When configuring additional nodeadm NodeConfig sections, they'll be merged with the base settings the provider sets. You can overwrite base settings or provide additional settings this way.
  /// [operatingSystem] The type of OS to use for the node group. Will be used to determine the right EKS optimized AMI to use based on the instance types and gpu configuration.
  /// [spotPrice] Bidding price for spot instance. If set, only spot instances will be added as worker node.
  /// [taints] Custom k8s node taints to be attached to each worker node. Adds the given taints to the `--register-with-taints` kubelet argument
  /// [version] Desired Kubernetes master / control plane version. If you do not specify a value, the latest available version is used.
  NodeGroupV2Args({
    pulumi.Output<String>? amiId,
    pulumi.Output<String>? amiType,
    pulumi.Output<Map<String, String>>? autoScalingGroupTags,
    pulumi.Output<String>? bootstrapExtraArgs,
    pulumi.Output<Map<String, dynamic>>? bottlerocketSettings,
    pulumi.Output<Map<String, String>>? cloudFormationTags,
    required pulumi.Output<Cluster> cluster,
    pulumi.Output<pulumi_aws_ec2.SecurityGroupRule>? clusterIngressRule,
    pulumi.Output<String>? clusterIngressRuleId,
    pulumi.Output<int>? desiredCapacity,
    pulumi.Output<bool>? enableDetailedMonitoring,
    pulumi.Output<bool>? encryptRootBlockDevice,
    pulumi.Output<List<pulumi_aws_ec2.SecurityGroup>>? extraNodeSecurityGroups,
    pulumi.Output<bool>? gpu,
    pulumi.Output<bool>? ignoreScalingChanges,
    pulumi.Output<pulumi_aws_iam.InstanceProfile>? instanceProfile,
    pulumi.Output<String>? instanceProfileName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? kubeletExtraArgs,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<pulumi_aws_ec2.LaunchTemplateTagSpecification>>? launchTemplateTagSpecifications,
    pulumi.Output<int>? maxSize,
    pulumi.Output<int>? minRefreshPercentage,
    pulumi.Output<int>? minSize,
    pulumi.Output<bool>? nodeAssociatePublicIpAddress,
    pulumi.Output<String>? nodePublicKey,
    pulumi.Output<bool>? nodeRootVolumeDeleteOnTermination,
    pulumi.Output<bool>? nodeRootVolumeEncrypted,
    pulumi.Output<int>? nodeRootVolumeIops,
    pulumi.Output<int>? nodeRootVolumeSize,
    pulumi.Output<int>? nodeRootVolumeThroughput,
    pulumi.Output<String>? nodeRootVolumeType,
    pulumi.Output<pulumi_aws_ec2.SecurityGroup>? nodeSecurityGroup,
    pulumi.Output<String>? nodeSecurityGroupId,
    pulumi.Output<List<String>>? nodeSubnetIds,
    pulumi.Output<String>? nodeUserData,
    pulumi.Output<String>? nodeUserDataOverride,
    pulumi.Output<List<NodeadmOptions>>? nodeadmExtraOptions,
    pulumi.Output<OperatingSystem>? operatingSystem,
    pulumi.Output<String>? spotPrice,
    pulumi.Output<Map<String, Taint>>? taints,
    pulumi.Output<String>? version,
  }) :
      amiId = pulumi.Input.asOptionalInput<String>(amiId),
      amiType = pulumi.Input.asOptionalInput<String>(amiType),
      autoScalingGroupTags = pulumi.Input.asOptionalInput<Map<String, String>>(autoScalingGroupTags),
      bootstrapExtraArgs = pulumi.Input.asOptionalInput<String>(bootstrapExtraArgs),
      bottlerocketSettings = pulumi.Input.asOptionalInput<Map<String, dynamic>>(bottlerocketSettings),
      cloudFormationTags = pulumi.Input.asOptionalInput<Map<String, String>>(cloudFormationTags),
      cluster = pulumi.Input.asInput<Cluster>(cluster),
      clusterIngressRule = pulumi.Input.asOptionalInput<pulumi_aws_ec2.SecurityGroupRule>(clusterIngressRule),
      clusterIngressRuleId = pulumi.Input.asOptionalInput<String>(clusterIngressRuleId),
      desiredCapacity = pulumi.Input.asOptionalInput<int>(desiredCapacity),
      enableDetailedMonitoring = pulumi.Input.asOptionalInput<bool>(enableDetailedMonitoring),
      encryptRootBlockDevice = pulumi.Input.asOptionalInput<bool>(encryptRootBlockDevice),
      extraNodeSecurityGroups = pulumi.Input.asOptionalInput<List<pulumi_aws_ec2.SecurityGroup>>(extraNodeSecurityGroups),
      gpu = pulumi.Input.asOptionalInput<bool>(gpu),
      ignoreScalingChanges = pulumi.Input.asOptionalInput<bool>(ignoreScalingChanges),
      instanceProfile = pulumi.Input.asOptionalInput<pulumi_aws_iam.InstanceProfile>(instanceProfile),
      instanceProfileName = pulumi.Input.asOptionalInput<String>(instanceProfileName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      kubeletExtraArgs = pulumi.Input.asOptionalInput<String>(kubeletExtraArgs),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      launchTemplateTagSpecifications = pulumi.Input.asOptionalInput<List<pulumi_aws_ec2.LaunchTemplateTagSpecification>>(launchTemplateTagSpecifications),
      maxSize = pulumi.Input.asOptionalInput<int>(maxSize),
      minRefreshPercentage = pulumi.Input.asOptionalInput<int>(minRefreshPercentage),
      minSize = pulumi.Input.asOptionalInput<int>(minSize),
      nodeAssociatePublicIpAddress = pulumi.Input.asOptionalInput<bool>(nodeAssociatePublicIpAddress),
      nodePublicKey = pulumi.Input.asOptionalInput<String>(nodePublicKey),
      nodeRootVolumeDeleteOnTermination = pulumi.Input.asOptionalInput<bool>(nodeRootVolumeDeleteOnTermination),
      nodeRootVolumeEncrypted = pulumi.Input.asOptionalInput<bool>(nodeRootVolumeEncrypted),
      nodeRootVolumeIops = pulumi.Input.asOptionalInput<int>(nodeRootVolumeIops),
      nodeRootVolumeSize = pulumi.Input.asOptionalInput<int>(nodeRootVolumeSize),
      nodeRootVolumeThroughput = pulumi.Input.asOptionalInput<int>(nodeRootVolumeThroughput),
      nodeRootVolumeType = pulumi.Input.asOptionalInput<String>(nodeRootVolumeType),
      nodeSecurityGroup = pulumi.Input.asOptionalInput<pulumi_aws_ec2.SecurityGroup>(nodeSecurityGroup),
      nodeSecurityGroupId = pulumi.Input.asOptionalInput<String>(nodeSecurityGroupId),
      nodeSubnetIds = pulumi.Input.asOptionalInput<List<String>>(nodeSubnetIds),
      nodeUserData = pulumi.Input.asOptionalInput<String>(nodeUserData),
      nodeUserDataOverride = pulumi.Input.asOptionalInput<String>(nodeUserDataOverride),
      nodeadmExtraOptions = pulumi.Input.asOptionalInput<List<NodeadmOptions>>(nodeadmExtraOptions),
      operatingSystem = pulumi.Input.asOptionalInput<OperatingSystem>(operatingSystem),
      spotPrice = pulumi.Input.asOptionalInput<String>(spotPrice),
      taints = pulumi.Input.asOptionalInput<Map<String, Taint>>(taints),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiId': ?amiId,
      'amiType': ?amiType,
      'autoScalingGroupTags': ?autoScalingGroupTags,
      'bootstrapExtraArgs': ?bootstrapExtraArgs,
      'bottlerocketSettings': ?bottlerocketSettings,
      'cloudFormationTags': ?cloudFormationTags,
      'cluster': cluster,
      'clusterIngressRule': ?clusterIngressRule,
      'clusterIngressRuleId': ?clusterIngressRuleId,
      'desiredCapacity': ?desiredCapacity,
      'enableDetailedMonitoring': ?enableDetailedMonitoring,
      'encryptRootBlockDevice': ?encryptRootBlockDevice,
      'extraNodeSecurityGroups': ?extraNodeSecurityGroups,
      'gpu': ?gpu,
      'ignoreScalingChanges': ?ignoreScalingChanges,
      'instanceProfile': ?instanceProfile,
      'instanceProfileName': ?instanceProfileName,
      'instanceType': ?instanceType,
      'keyName': ?keyName,
      'kubeletExtraArgs': ?kubeletExtraArgs,
      'labels': ?labels,
      'launchTemplateTagSpecifications': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ec2.LaunchTemplateTagSpecification>, List<Map<String, dynamic>>>(launchTemplateTagSpecifications, (value) => pulumi.Input.encodeList<pulumi_aws_ec2.LaunchTemplateTagSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxSize': ?maxSize,
      'minRefreshPercentage': ?minRefreshPercentage,
      'minSize': ?minSize,
      'nodeAssociatePublicIpAddress': ?nodeAssociatePublicIpAddress,
      'nodePublicKey': ?nodePublicKey,
      'nodeRootVolumeDeleteOnTermination': ?nodeRootVolumeDeleteOnTermination,
      'nodeRootVolumeEncrypted': ?nodeRootVolumeEncrypted,
      'nodeRootVolumeIops': ?nodeRootVolumeIops,
      'nodeRootVolumeSize': ?nodeRootVolumeSize,
      'nodeRootVolumeThroughput': ?nodeRootVolumeThroughput,
      'nodeRootVolumeType': ?nodeRootVolumeType,
      'nodeSecurityGroup': ?nodeSecurityGroup,
      'nodeSecurityGroupId': ?nodeSecurityGroupId,
      'nodeSubnetIds': ?nodeSubnetIds,
      'nodeUserData': ?nodeUserData,
      'nodeUserDataOverride': ?nodeUserDataOverride,
      'nodeadmExtraOptions': ?pulumi.Input.mapOptionalInputValue<List<NodeadmOptions>, List<Map<String, dynamic>>>(nodeadmExtraOptions, (value) => pulumi.Input.encodeList<NodeadmOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystem': ?pulumi.Input.mapOptionalInputValue<OperatingSystem, String>(operatingSystem, (value) => value.value),
      'spotPrice': ?spotPrice,
      'taints': ?pulumi.Input.mapOptionalInputValue<Map<String, Taint>, Map<String, Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeMapValues<Taint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory NodeGroupV2Args.fromMap(Map<String, dynamic> map) {
    return NodeGroupV2Args(
      amiId: map['amiId'] == null ? null : pulumi.Output.create<String>(map['amiId'] as String),
      amiType: map['amiType'] == null ? null : pulumi.Output.create<String>(map['amiType'] as String),
      autoScalingGroupTags: map['autoScalingGroupTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['autoScalingGroupTags'] as Map).cast<String, String>()),
      bootstrapExtraArgs: map['bootstrapExtraArgs'] == null ? null : pulumi.Output.create<String>(map['bootstrapExtraArgs'] as String),
      bottlerocketSettings: map['bottlerocketSettings'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['bottlerocketSettings'] as Map).cast<String, dynamic>()),
      cloudFormationTags: map['cloudFormationTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['cloudFormationTags'] as Map).cast<String, String>()),
      cluster: pulumi.Output.create<Cluster>(map['cluster'] as Cluster),
      clusterIngressRule: map['clusterIngressRule'] == null ? null : pulumi.Output.create<pulumi_aws_ec2.SecurityGroupRule>(map['clusterIngressRule'] as pulumi_aws_ec2.SecurityGroupRule),
      clusterIngressRuleId: map['clusterIngressRuleId'] == null ? null : pulumi.Output.create<String>(map['clusterIngressRuleId'] as String),
      desiredCapacity: map['desiredCapacity'] == null ? null : pulumi.Output.create<int>(map['desiredCapacity'] as int),
      enableDetailedMonitoring: map['enableDetailedMonitoring'] == null ? null : pulumi.Output.create<bool>(map['enableDetailedMonitoring'] as bool),
      encryptRootBlockDevice: map['encryptRootBlockDevice'] == null ? null : pulumi.Output.create<bool>(map['encryptRootBlockDevice'] as bool),
      extraNodeSecurityGroups: map['extraNodeSecurityGroups'] == null ? null : pulumi.Output.create<List<pulumi_aws_ec2.SecurityGroup>>((map['extraNodeSecurityGroups'] as List).cast<pulumi_aws_ec2.SecurityGroup>()),
      gpu: map['gpu'] == null ? null : pulumi.Output.create<bool>(map['gpu'] as bool),
      ignoreScalingChanges: map['ignoreScalingChanges'] == null ? null : pulumi.Output.create<bool>(map['ignoreScalingChanges'] as bool),
      instanceProfile: map['instanceProfile'] == null ? null : pulumi.Output.create<pulumi_aws_iam.InstanceProfile>(map['instanceProfile'] as pulumi_aws_iam.InstanceProfile),
      instanceProfileName: map['instanceProfileName'] == null ? null : pulumi.Output.create<String>(map['instanceProfileName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      kubeletExtraArgs: map['kubeletExtraArgs'] == null ? null : pulumi.Output.create<String>(map['kubeletExtraArgs'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      launchTemplateTagSpecifications: map['launchTemplateTagSpecifications'] == null ? null : pulumi.Output.create<List<pulumi_aws_ec2.LaunchTemplateTagSpecification>>(pulumi.Input.decodeList<pulumi_aws_ec2.LaunchTemplateTagSpecification>(map['launchTemplateTagSpecifications'], (value) => pulumi_aws_ec2.LaunchTemplateTagSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      maxSize: map['maxSize'] == null ? null : pulumi.Output.create<int>(map['maxSize'] as int),
      minRefreshPercentage: map['minRefreshPercentage'] == null ? null : pulumi.Output.create<int>(map['minRefreshPercentage'] as int),
      minSize: map['minSize'] == null ? null : pulumi.Output.create<int>(map['minSize'] as int),
      nodeAssociatePublicIpAddress: map['nodeAssociatePublicIpAddress'] == null ? null : pulumi.Output.create<bool>(map['nodeAssociatePublicIpAddress'] as bool),
      nodePublicKey: map['nodePublicKey'] == null ? null : pulumi.Output.create<String>(map['nodePublicKey'] as String),
      nodeRootVolumeDeleteOnTermination: map['nodeRootVolumeDeleteOnTermination'] == null ? null : pulumi.Output.create<bool>(map['nodeRootVolumeDeleteOnTermination'] as bool),
      nodeRootVolumeEncrypted: map['nodeRootVolumeEncrypted'] == null ? null : pulumi.Output.create<bool>(map['nodeRootVolumeEncrypted'] as bool),
      nodeRootVolumeIops: map['nodeRootVolumeIops'] == null ? null : pulumi.Output.create<int>(map['nodeRootVolumeIops'] as int),
      nodeRootVolumeSize: map['nodeRootVolumeSize'] == null ? null : pulumi.Output.create<int>(map['nodeRootVolumeSize'] as int),
      nodeRootVolumeThroughput: map['nodeRootVolumeThroughput'] == null ? null : pulumi.Output.create<int>(map['nodeRootVolumeThroughput'] as int),
      nodeRootVolumeType: map['nodeRootVolumeType'] == null ? null : pulumi.Output.create<String>(map['nodeRootVolumeType'] as String),
      nodeSecurityGroup: map['nodeSecurityGroup'] == null ? null : pulumi.Output.create<pulumi_aws_ec2.SecurityGroup>(map['nodeSecurityGroup'] as pulumi_aws_ec2.SecurityGroup),
      nodeSecurityGroupId: map['nodeSecurityGroupId'] == null ? null : pulumi.Output.create<String>(map['nodeSecurityGroupId'] as String),
      nodeSubnetIds: map['nodeSubnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['nodeSubnetIds'] as List).cast<String>()),
      nodeUserData: map['nodeUserData'] == null ? null : pulumi.Output.create<String>(map['nodeUserData'] as String),
      nodeUserDataOverride: map['nodeUserDataOverride'] == null ? null : pulumi.Output.create<String>(map['nodeUserDataOverride'] as String),
      nodeadmExtraOptions: map['nodeadmExtraOptions'] == null ? null : pulumi.Output.create<List<NodeadmOptions>>(pulumi.Input.decodeList<NodeadmOptions>(map['nodeadmExtraOptions'], (value) => NodeadmOptions.fromMap((value as Map).cast<String, dynamic>()))),
      operatingSystem: map['operatingSystem'] == null ? null : pulumi.Output.create<OperatingSystem>(OperatingSystem.fromValue(map['operatingSystem'] as String)),
      spotPrice: map['spotPrice'] == null ? null : pulumi.Output.create<String>(map['spotPrice'] as String),
      taints: map['taints'] == null ? null : pulumi.Output.create<Map<String, Taint>>(pulumi.Input.decodeMapValues<Taint>(map['taints'], (value) => Taint.fromMap((value as Map).cast<String, dynamic>()))),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

