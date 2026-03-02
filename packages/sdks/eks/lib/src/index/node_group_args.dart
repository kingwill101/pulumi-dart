// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster.dart';
import 'nodeadm_options.dart';
import 'operating_system.dart';
import 'taint.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// {@template pulumi_index_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_index_node_group_args_doc}
class NodeGroupArgs {
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
  /// The maximum number of worker nodes running in the cluster. Defaults to 2.
  final pulumi.Input<int>? maxSize;
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

  /// Creates a new [NodeGroupArgs].
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
  /// [instanceProfile] The IAM InstanceProfile to use on the NodeGroup. Properties instanceProfile and instanceProfileName are mutually exclusive.
  /// [instanceProfileName] The name of the IAM InstanceProfile to use on the NodeGroup. Properties instanceProfile and instanceProfileName are mutually exclusive.
  /// [instanceType] The instance type to use for the cluster's nodes. Defaults to "t3.medium".
  /// [keyName] Name of the key pair to use for SSH access to worker nodes.
  /// [kubeletExtraArgs] Extra args to pass to the Kubelet. Corresponds to the options passed in the `--kubeletExtraArgs` flag to `/etc/eks/bootstrap.sh`. For example, '--port=10251 --address=0.0.0.0'. Note that the `labels` and `taints` properties will be applied to this list (using `--node-labels` and `--register-with-taints` respectively) after to the explicit `kubeletExtraArgs`.
  /// [labels] Custom k8s node labels to be attached to each worker node. Adds the given key/value pairs to the `--node-labels` kubelet argument.
  /// [maxSize] The maximum number of worker nodes running in the cluster. Defaults to 2.
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
  NodeGroupArgs({
    this.amiId,
    this.amiType,
    this.autoScalingGroupTags,
    this.bootstrapExtraArgs,
    this.bottlerocketSettings,
    this.cloudFormationTags,
    required this.cluster,
    this.clusterIngressRule,
    this.clusterIngressRuleId,
    this.desiredCapacity,
    this.enableDetailedMonitoring,
    this.encryptRootBlockDevice,
    this.extraNodeSecurityGroups,
    this.gpu,
    this.instanceProfile,
    this.instanceProfileName,
    this.instanceType,
    this.keyName,
    this.kubeletExtraArgs,
    this.labels,
    this.maxSize,
    this.minSize,
    this.nodeAssociatePublicIpAddress,
    this.nodePublicKey,
    this.nodeRootVolumeDeleteOnTermination,
    this.nodeRootVolumeEncrypted,
    this.nodeRootVolumeIops,
    this.nodeRootVolumeSize,
    this.nodeRootVolumeThroughput,
    this.nodeRootVolumeType,
    this.nodeSecurityGroup,
    this.nodeSecurityGroupId,
    this.nodeSubnetIds,
    this.nodeUserData,
    this.nodeUserDataOverride,
    this.nodeadmExtraOptions,
    this.operatingSystem,
    this.spotPrice,
    this.taints,
    this.version,
  });

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
      'instanceProfile': ?instanceProfile,
      'instanceProfileName': ?instanceProfileName,
      'instanceType': ?instanceType,
      'keyName': ?keyName,
      'kubeletExtraArgs': ?kubeletExtraArgs,
      'labels': ?labels,
      'maxSize': ?maxSize,
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

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      amiId: map['amiId'] == null ? null : (map['amiId'] as String).input(),
      amiType: map['amiType'] == null ? null : (map['amiType'] as String).input(),
      autoScalingGroupTags: map['autoScalingGroupTags'] == null ? null : ((map['autoScalingGroupTags'] as Map).cast<String, String>()).input(),
      bootstrapExtraArgs: map['bootstrapExtraArgs'] == null ? null : (map['bootstrapExtraArgs'] as String).input(),
      bottlerocketSettings: map['bottlerocketSettings'] == null ? null : ((map['bottlerocketSettings'] as Map).cast<String, dynamic>()).input(),
      cloudFormationTags: map['cloudFormationTags'] == null ? null : ((map['cloudFormationTags'] as Map).cast<String, String>()).input(),
      cluster: (map['cluster'] as Cluster).input(),
      clusterIngressRule: map['clusterIngressRule'] == null ? null : (map['clusterIngressRule'] as pulumi_aws_ec2.SecurityGroupRule).input(),
      clusterIngressRuleId: map['clusterIngressRuleId'] == null ? null : (map['clusterIngressRuleId'] as String).input(),
      desiredCapacity: map['desiredCapacity'] == null ? null : (map['desiredCapacity'] as int).input(),
      enableDetailedMonitoring: map['enableDetailedMonitoring'] == null ? null : (map['enableDetailedMonitoring'] as bool).input(),
      encryptRootBlockDevice: map['encryptRootBlockDevice'] == null ? null : (map['encryptRootBlockDevice'] as bool).input(),
      extraNodeSecurityGroups: map['extraNodeSecurityGroups'] == null ? null : ((map['extraNodeSecurityGroups'] as List).cast<pulumi_aws_ec2.SecurityGroup>()).input(),
      gpu: map['gpu'] == null ? null : (map['gpu'] as bool).input(),
      instanceProfile: map['instanceProfile'] == null ? null : (map['instanceProfile'] as pulumi_aws_iam.InstanceProfile).input(),
      instanceProfileName: map['instanceProfileName'] == null ? null : (map['instanceProfileName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      kubeletExtraArgs: map['kubeletExtraArgs'] == null ? null : (map['kubeletExtraArgs'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      maxSize: map['maxSize'] == null ? null : (map['maxSize'] as int).input(),
      minSize: map['minSize'] == null ? null : (map['minSize'] as int).input(),
      nodeAssociatePublicIpAddress: map['nodeAssociatePublicIpAddress'] == null ? null : (map['nodeAssociatePublicIpAddress'] as bool).input(),
      nodePublicKey: map['nodePublicKey'] == null ? null : (map['nodePublicKey'] as String).input(),
      nodeRootVolumeDeleteOnTermination: map['nodeRootVolumeDeleteOnTermination'] == null ? null : (map['nodeRootVolumeDeleteOnTermination'] as bool).input(),
      nodeRootVolumeEncrypted: map['nodeRootVolumeEncrypted'] == null ? null : (map['nodeRootVolumeEncrypted'] as bool).input(),
      nodeRootVolumeIops: map['nodeRootVolumeIops'] == null ? null : (map['nodeRootVolumeIops'] as int).input(),
      nodeRootVolumeSize: map['nodeRootVolumeSize'] == null ? null : (map['nodeRootVolumeSize'] as int).input(),
      nodeRootVolumeThroughput: map['nodeRootVolumeThroughput'] == null ? null : (map['nodeRootVolumeThroughput'] as int).input(),
      nodeRootVolumeType: map['nodeRootVolumeType'] == null ? null : (map['nodeRootVolumeType'] as String).input(),
      nodeSecurityGroup: map['nodeSecurityGroup'] == null ? null : (map['nodeSecurityGroup'] as pulumi_aws_ec2.SecurityGroup).input(),
      nodeSecurityGroupId: map['nodeSecurityGroupId'] == null ? null : (map['nodeSecurityGroupId'] as String).input(),
      nodeSubnetIds: map['nodeSubnetIds'] == null ? null : ((map['nodeSubnetIds'] as List).cast<String>()).input(),
      nodeUserData: map['nodeUserData'] == null ? null : (map['nodeUserData'] as String).input(),
      nodeUserDataOverride: map['nodeUserDataOverride'] == null ? null : (map['nodeUserDataOverride'] as String).input(),
      nodeadmExtraOptions: map['nodeadmExtraOptions'] == null ? null : (pulumi.Input.decodeList<NodeadmOptions>(map['nodeadmExtraOptions'], (value) => NodeadmOptions.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operatingSystem: map['operatingSystem'] == null ? null : (OperatingSystem.fromValue(map['operatingSystem'] as String)).input(),
      spotPrice: map['spotPrice'] == null ? null : (map['spotPrice'] as String).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeMapValues<Taint>(map['taints'], (value) => Taint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

