// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster.dart';
import 'nodeadm_options.dart';
import 'operating_system.dart';
import 'package:pulumi_aws/eks.dart' as pulumi_aws_eks;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// {@template pulumi_index_managed_node_group_args_doc}
/// The set of arguments for ManagedNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_index_managed_node_group_args_doc}
class ManagedNodeGroupArgs {
  /// The AMI ID to use for the worker nodes.
  /// Defaults to the latest recommended EKS Optimized AMI from the AWS Systems Manager Parameter Store.
  ///
  /// Note: `amiId` is mutually exclusive with `gpu` and `amiType`.
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html.
  final pulumi.Input<String>? amiId;
  /// Type of Amazon Machine Image (AMI) associated with the EKS Node Group. Defaults to `AL2_x86_64`.
  /// Note: `amiType` and `amiId` are mutually exclusive.
  ///
  /// See the AWS documentation (https://docs.aws.amazon.com/eks/latest/APIReference/API_Nodegroup.html#AmazonEKS-Type-Nodegroup-amiType) for valid AMI Types. This provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? amiType;
  /// Additional args to pass directly to `/etc/eks/bootstrap.sh`. For details on available options, see: https://github.com/awslabs/amazon-eks-ami/blob/master/files/bootstrap.sh. Note that the `--apiserver-endpoint`, `--b64-cluster-ca` and `--kubelet-extra-args` flags are included automatically based on other configuration parameters.
  ///
  /// Note that this field conflicts with `launchTemplate`.
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
  /// Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`. This provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? capacityType;
  /// The target EKS cluster.
  final pulumi.Input<Cluster> cluster;
  /// Name of the EKS Cluster.
  final pulumi.Input<String>? clusterName;
  /// Disk size in GiB for worker nodes. Defaults to `20`. This provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<int>? diskSize;
  /// Determines whether to enable Elastic Fabric Adapter (EFA) support for the node group. If multiple different instance types are configured for the node group, the first one will be used to determine the network interfaces to use. Requires `placementGroupAvailabilityZone` to be set.
  final pulumi.Input<bool>? enableEfaSupport;
  /// Enables the ability to use EC2 Instance Metadata Service v2, which provides a more secure way to access instance metadata. For more information, see: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-service.html.
  /// Defaults to `false`.
  ///
  /// Note that this field conflicts with `launchTemplate`. If you are providing a custom `launchTemplate`, you should enable this feature within the `launchTemplateMetadataOptions` of the supplied `launchTemplate`.
  final pulumi.Input<bool>? enableIMDSv2;
  /// Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
  final pulumi.Input<bool>? forceUpdateVersion;
  /// Use the latest recommended EKS Optimized AMI with GPU support for the worker nodes.
  /// Defaults to false.
  ///
  /// Note: `gpu` and `amiId` are mutually exclusive.
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-amis.html.
  final pulumi.Input<bool>? gpu;
  /// Whether to ignore changes to the desired size of the Auto Scaling Group. This is useful when using Cluster Autoscaler.
  ///
  /// See [EKS best practices](https://aws.github.io/aws-eks-best-practices/cluster-autoscaling/) for more details.
  final pulumi.Input<bool>? ignoreScalingChanges;
  /// Set of instance types associated with the EKS Node Group. Defaults to `["t3.medium"]`. This provider will only perform drift detection if a configuration value is provided. Currently, the EKS API only accepts a single value in the set.
  final pulumi.Input<List<String>>? instanceTypes;
  /// Extra args to pass to the Kubelet. Corresponds to the options passed in the `--kubeletExtraArgs` flag to `/etc/eks/bootstrap.sh`. For example, '--port=10251 --address=0.0.0.0'. To escape characters in the extra argsvalue, wrap the value in quotes. For example, `kubeletExtraArgs = '--allowed-unsafe-sysctls "net.core.somaxconn"'`.
  /// Note that this field conflicts with `launchTemplate`.
  final pulumi.Input<String>? kubeletExtraArgs;
  /// Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  final pulumi.Input<Map<String, String>>? labels;
  /// Launch Template settings.
  ///
  /// Note: This field is mutually exclusive with `kubeletExtraArgs` and `bootstrapExtraArgs`.
  final pulumi.Input<pulumi_aws_eks.NodeGroupLaunchTemplate>? launchTemplate;
  /// Name of the EKS Node Group. If omitted, this provider will assign a random, unique name. Conflicts with `nodeGroupNamePrefix`.
  final pulumi.Input<String>? nodeGroupName;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `nodeGroupName`.
  final pulumi.Input<String>? nodeGroupNamePrefix;
  /// The IAM Role that provides permissions for the EKS Node Group.
  ///
  /// Note, `nodeRole` and `nodeRoleArn` are mutually exclusive, and a single option must be used.
  final pulumi.Input<pulumi_aws_iam.Role>? nodeRole;
  /// Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
  ///
  /// Note, `nodeRoleArn` and `nodeRole` are mutually exclusive, and a single option must be used.
  final pulumi.Input<String>? nodeRoleArn;
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
  /// The availability zone of the placement group for EFA support. Required if `enableEfaSupport` is true.
  final pulumi.Input<String>? placementGroupAvailabilityZone;
  /// AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
  final pulumi.Input<String>? releaseVersion;
  /// Remote access settings.
  final pulumi.Input<pulumi_aws_eks.NodeGroupRemoteAccess>? remoteAccess;
  /// Scaling settings.
  ///
  /// Default scaling amounts of the node group autoscaling group are:
  /// - desiredSize: 2
  /// - minSize: 1
  /// - maxSize: 2
  final pulumi.Input<pulumi_aws_eks.NodeGroupScalingConfig>? scalingConfig;
  /// Identifiers of EC2 Subnets to associate with the EKS Node Group. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  ///
  /// Default subnetIds is chosen from the following list, in order, if subnetIds arg is not set:
  /// - core.subnetIds
  /// - core.privateIds
  /// - core.publicSubnetIds
  ///
  /// This default logic is based on the existing subnet IDs logic of this package: https://git.io/JeM11
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value mapping of resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group.
  final pulumi.Input<List<pulumi_aws_eks.NodeGroupTaint>>? taints;
  /// User specified code to run on node startup. This is expected to handle the full AWS EKS node bootstrapping. If omitted, the provider will configure the user data.
  ///
  /// See for more details: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html#launch-template-user-data.
  final pulumi.Input<String>? userData;
  final pulumi.Input<String>? version;

  /// Creates a new [ManagedNodeGroupArgs].
  /// [amiId] The AMI ID to use for the worker nodes.
  /// [amiType] Type of Amazon Machine Image (AMI) associated with the EKS Node Group. Defaults to `AL2_x86_64`.
  /// [bootstrapExtraArgs] Additional args to pass directly to `/etc/eks/bootstrap.sh`. For details on available options, see: https://github.com/awslabs/amazon-eks-ami/blob/master/files/bootstrap.sh. Note that the `--apiserver-endpoint`, `--b64-cluster-ca` and `--kubelet-extra-args` flags are included automatically based on other configuration parameters.
  /// [bottlerocketSettings] The configuration settings for Bottlerocket OS.
  /// [capacityType] Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`. This provider will only perform drift detection if a configuration value is provided.
  /// [cluster] The target EKS cluster.
  /// [clusterName] Name of the EKS Cluster.
  /// [diskSize] Disk size in GiB for worker nodes. Defaults to `20`. This provider will only perform drift detection if a configuration value is provided.
  /// [enableEfaSupport] Determines whether to enable Elastic Fabric Adapter (EFA) support for the node group. If multiple different instance types are configured for the node group, the first one will be used to determine the network interfaces to use. Requires `placementGroupAvailabilityZone` to be set.
  /// [enableIMDSv2] Enables the ability to use EC2 Instance Metadata Service v2, which provides a more secure way to access instance metadata. For more information, see: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-service.html.
  /// [forceUpdateVersion] Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
  /// [gpu] Use the latest recommended EKS Optimized AMI with GPU support for the worker nodes.
  /// [ignoreScalingChanges] Whether to ignore changes to the desired size of the Auto Scaling Group. This is useful when using Cluster Autoscaler.
  /// [instanceTypes] Set of instance types associated with the EKS Node Group. Defaults to `["t3.medium"]`. This provider will only perform drift detection if a configuration value is provided. Currently, the EKS API only accepts a single value in the set.
  /// [kubeletExtraArgs] Extra args to pass to the Kubelet. Corresponds to the options passed in the `--kubeletExtraArgs` flag to `/etc/eks/bootstrap.sh`. For example, '--port=10251 --address=0.0.0.0'. To escape characters in the extra argsvalue, wrap the value in quotes. For example, `kubeletExtraArgs = '--allowed-unsafe-sysctls "net.core.somaxconn"'`.
  /// [labels] Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
  /// [launchTemplate] Launch Template settings.
  /// [nodeGroupName] Name of the EKS Node Group. If omitted, this provider will assign a random, unique name. Conflicts with `nodeGroupNamePrefix`.
  /// [nodeGroupNamePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `nodeGroupName`.
  /// [nodeRole] The IAM Role that provides permissions for the EKS Node Group.
  /// [nodeRoleArn] Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
  /// [nodeadmExtraOptions] Extra nodeadm configuration sections to be added to the nodeadm user data. This can be shell scripts, nodeadm NodeConfig or any other user data compatible script. When configuring additional nodeadm NodeConfig sections, they'll be merged with the base settings the provider sets. You can overwrite base settings or provide additional settings this way.
  /// [operatingSystem] The type of OS to use for the node group. Will be used to determine the right EKS optimized AMI to use based on the instance types and gpu configuration.
  /// [placementGroupAvailabilityZone] The availability zone of the placement group for EFA support. Required if `enableEfaSupport` is true.
  /// [releaseVersion] AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
  /// [remoteAccess] Remote access settings.
  /// [scalingConfig] Scaling settings.
  /// [subnetIds] Identifiers of EC2 Subnets to associate with the EKS Node Group. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  /// [tags] Key-value mapping of resource tags.
  /// [taints] The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group.
  /// [userData] User specified code to run on node startup. This is expected to handle the full AWS EKS node bootstrapping. If omitted, the provider will configure the user data.
  /// [version] Optional.
  ManagedNodeGroupArgs({
    pulumi.Output<String>? amiId,
    pulumi.Output<String>? amiType,
    pulumi.Output<String>? bootstrapExtraArgs,
    pulumi.Output<Map<String, dynamic>>? bottlerocketSettings,
    pulumi.Output<String>? capacityType,
    required pulumi.Output<Cluster> cluster,
    pulumi.Output<String>? clusterName,
    pulumi.Output<int>? diskSize,
    pulumi.Output<bool>? enableEfaSupport,
    pulumi.Output<bool>? enableIMDSv2,
    pulumi.Output<bool>? forceUpdateVersion,
    pulumi.Output<bool>? gpu,
    pulumi.Output<bool>? ignoreScalingChanges,
    pulumi.Output<List<String>>? instanceTypes,
    pulumi.Output<String>? kubeletExtraArgs,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<pulumi_aws_eks.NodeGroupLaunchTemplate>? launchTemplate,
    pulumi.Output<String>? nodeGroupName,
    pulumi.Output<String>? nodeGroupNamePrefix,
    pulumi.Output<pulumi_aws_iam.Role>? nodeRole,
    pulumi.Output<String>? nodeRoleArn,
    pulumi.Output<List<NodeadmOptions>>? nodeadmExtraOptions,
    pulumi.Output<OperatingSystem>? operatingSystem,
    pulumi.Output<String>? placementGroupAvailabilityZone,
    pulumi.Output<String>? releaseVersion,
    pulumi.Output<pulumi_aws_eks.NodeGroupRemoteAccess>? remoteAccess,
    pulumi.Output<pulumi_aws_eks.NodeGroupScalingConfig>? scalingConfig,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<pulumi_aws_eks.NodeGroupTaint>>? taints,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? version,
  }) :
      amiId = pulumi.Input.asOptionalInput<String>(amiId),
      amiType = pulumi.Input.asOptionalInput<String>(amiType),
      bootstrapExtraArgs = pulumi.Input.asOptionalInput<String>(bootstrapExtraArgs),
      bottlerocketSettings = pulumi.Input.asOptionalInput<Map<String, dynamic>>(bottlerocketSettings),
      capacityType = pulumi.Input.asOptionalInput<String>(capacityType),
      cluster = pulumi.Input.asInput<Cluster>(cluster),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      enableEfaSupport = pulumi.Input.asOptionalInput<bool>(enableEfaSupport),
      enableIMDSv2 = pulumi.Input.asOptionalInput<bool>(enableIMDSv2),
      forceUpdateVersion = pulumi.Input.asOptionalInput<bool>(forceUpdateVersion),
      gpu = pulumi.Input.asOptionalInput<bool>(gpu),
      ignoreScalingChanges = pulumi.Input.asOptionalInput<bool>(ignoreScalingChanges),
      instanceTypes = pulumi.Input.asOptionalInput<List<String>>(instanceTypes),
      kubeletExtraArgs = pulumi.Input.asOptionalInput<String>(kubeletExtraArgs),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      launchTemplate = pulumi.Input.asOptionalInput<pulumi_aws_eks.NodeGroupLaunchTemplate>(launchTemplate),
      nodeGroupName = pulumi.Input.asOptionalInput<String>(nodeGroupName),
      nodeGroupNamePrefix = pulumi.Input.asOptionalInput<String>(nodeGroupNamePrefix),
      nodeRole = pulumi.Input.asOptionalInput<pulumi_aws_iam.Role>(nodeRole),
      nodeRoleArn = pulumi.Input.asOptionalInput<String>(nodeRoleArn),
      nodeadmExtraOptions = pulumi.Input.asOptionalInput<List<NodeadmOptions>>(nodeadmExtraOptions),
      operatingSystem = pulumi.Input.asOptionalInput<OperatingSystem>(operatingSystem),
      placementGroupAvailabilityZone = pulumi.Input.asOptionalInput<String>(placementGroupAvailabilityZone),
      releaseVersion = pulumi.Input.asOptionalInput<String>(releaseVersion),
      remoteAccess = pulumi.Input.asOptionalInput<pulumi_aws_eks.NodeGroupRemoteAccess>(remoteAccess),
      scalingConfig = pulumi.Input.asOptionalInput<pulumi_aws_eks.NodeGroupScalingConfig>(scalingConfig),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taints = pulumi.Input.asOptionalInput<List<pulumi_aws_eks.NodeGroupTaint>>(taints),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiId': ?amiId,
      'amiType': ?amiType,
      'bootstrapExtraArgs': ?bootstrapExtraArgs,
      'bottlerocketSettings': ?bottlerocketSettings,
      'capacityType': ?capacityType,
      'cluster': cluster,
      'clusterName': ?clusterName,
      'diskSize': ?diskSize,
      'enableEfaSupport': ?enableEfaSupport,
      'enableIMDSv2': ?enableIMDSv2,
      'forceUpdateVersion': ?forceUpdateVersion,
      'gpu': ?gpu,
      'ignoreScalingChanges': ?ignoreScalingChanges,
      'instanceTypes': ?instanceTypes,
      'kubeletExtraArgs': ?kubeletExtraArgs,
      'labels': ?labels,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_eks.NodeGroupLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'nodeGroupName': ?nodeGroupName,
      'nodeGroupNamePrefix': ?nodeGroupNamePrefix,
      'nodeRole': ?nodeRole,
      'nodeRoleArn': ?nodeRoleArn,
      'nodeadmExtraOptions': ?pulumi.Input.mapOptionalInputValue<List<NodeadmOptions>, List<Map<String, dynamic>>>(nodeadmExtraOptions, (value) => pulumi.Input.encodeList<NodeadmOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystem': ?pulumi.Input.mapOptionalInputValue<OperatingSystem, String>(operatingSystem, (value) => value.value),
      'placementGroupAvailabilityZone': ?placementGroupAvailabilityZone,
      'releaseVersion': ?releaseVersion,
      'remoteAccess': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_eks.NodeGroupRemoteAccess, Map<String, dynamic>>(remoteAccess, (value) => value.toMap()),
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_eks.NodeGroupScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_eks.NodeGroupTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<pulumi_aws_eks.NodeGroupTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userData': ?userData,
      'version': ?version,
    };
  }

  factory ManagedNodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNodeGroupArgs(
      amiId: map['amiId'] == null ? null : pulumi.Output.create<String>(map['amiId'] as String),
      amiType: map['amiType'] == null ? null : pulumi.Output.create<String>(map['amiType'] as String),
      bootstrapExtraArgs: map['bootstrapExtraArgs'] == null ? null : pulumi.Output.create<String>(map['bootstrapExtraArgs'] as String),
      bottlerocketSettings: map['bottlerocketSettings'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['bottlerocketSettings'] as Map).cast<String, dynamic>()),
      capacityType: map['capacityType'] == null ? null : pulumi.Output.create<String>(map['capacityType'] as String),
      cluster: pulumi.Output.create<Cluster>(map['cluster'] as Cluster),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      diskSize: map['diskSize'] == null ? null : pulumi.Output.create<int>(map['diskSize'] as int),
      enableEfaSupport: map['enableEfaSupport'] == null ? null : pulumi.Output.create<bool>(map['enableEfaSupport'] as bool),
      enableIMDSv2: map['enableIMDSv2'] == null ? null : pulumi.Output.create<bool>(map['enableIMDSv2'] as bool),
      forceUpdateVersion: map['forceUpdateVersion'] == null ? null : pulumi.Output.create<bool>(map['forceUpdateVersion'] as bool),
      gpu: map['gpu'] == null ? null : pulumi.Output.create<bool>(map['gpu'] as bool),
      ignoreScalingChanges: map['ignoreScalingChanges'] == null ? null : pulumi.Output.create<bool>(map['ignoreScalingChanges'] as bool),
      instanceTypes: map['instanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['instanceTypes'] as List).cast<String>()),
      kubeletExtraArgs: map['kubeletExtraArgs'] == null ? null : pulumi.Output.create<String>(map['kubeletExtraArgs'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      launchTemplate: map['launchTemplate'] == null ? null : pulumi.Output.create<pulumi_aws_eks.NodeGroupLaunchTemplate>(pulumi_aws_eks.NodeGroupLaunchTemplate.fromMap((map['launchTemplate'] as Map).cast<String, dynamic>())),
      nodeGroupName: map['nodeGroupName'] == null ? null : pulumi.Output.create<String>(map['nodeGroupName'] as String),
      nodeGroupNamePrefix: map['nodeGroupNamePrefix'] == null ? null : pulumi.Output.create<String>(map['nodeGroupNamePrefix'] as String),
      nodeRole: map['nodeRole'] == null ? null : pulumi.Output.create<pulumi_aws_iam.Role>(map['nodeRole'] as pulumi_aws_iam.Role),
      nodeRoleArn: map['nodeRoleArn'] == null ? null : pulumi.Output.create<String>(map['nodeRoleArn'] as String),
      nodeadmExtraOptions: map['nodeadmExtraOptions'] == null ? null : pulumi.Output.create<List<NodeadmOptions>>(pulumi.Input.decodeList<NodeadmOptions>(map['nodeadmExtraOptions'], (value) => NodeadmOptions.fromMap((value as Map).cast<String, dynamic>()))),
      operatingSystem: map['operatingSystem'] == null ? null : pulumi.Output.create<OperatingSystem>(OperatingSystem.fromValue(map['operatingSystem'] as String)),
      placementGroupAvailabilityZone: map['placementGroupAvailabilityZone'] == null ? null : pulumi.Output.create<String>(map['placementGroupAvailabilityZone'] as String),
      releaseVersion: map['releaseVersion'] == null ? null : pulumi.Output.create<String>(map['releaseVersion'] as String),
      remoteAccess: map['remoteAccess'] == null ? null : pulumi.Output.create<pulumi_aws_eks.NodeGroupRemoteAccess>(pulumi_aws_eks.NodeGroupRemoteAccess.fromMap((map['remoteAccess'] as Map).cast<String, dynamic>())),
      scalingConfig: map['scalingConfig'] == null ? null : pulumi.Output.create<pulumi_aws_eks.NodeGroupScalingConfig>(pulumi_aws_eks.NodeGroupScalingConfig.fromMap((map['scalingConfig'] as Map).cast<String, dynamic>())),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      taints: map['taints'] == null ? null : pulumi.Output.create<List<pulumi_aws_eks.NodeGroupTaint>>(pulumi.Input.decodeList<pulumi_aws_eks.NodeGroupTaint>(map['taints'], (value) => pulumi_aws_eks.NodeGroupTaint.fromMap((value as Map).cast<String, dynamic>()))),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

