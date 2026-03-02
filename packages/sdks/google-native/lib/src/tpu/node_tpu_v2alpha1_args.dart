// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_tpu_v2alpha1.dart';
import 'attached_disk_tpu_v2alpha1.dart';
import 'boot_disk_config.dart';
import 'network_config_tpu_v2alpha1.dart';
import 'node_health_tpu_v2alpha1.dart';
import 'scheduling_config_tpu_v2alpha1.dart';
import 'service_account_tpu_v2alpha1.dart';
import 'shielded_instance_config_tpu_v2alpha1.dart';

/// {@template pulumi_tpu_v2alpha1_node_tpu_v2alpha1_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2alpha1_node_tpu_v2alpha1_args_doc}
class NodeTpuV2alpha1Args {
  /// The AccleratorConfig for the TPU Node.
  final pulumi.Input<AcceleratorConfigTpuV2alpha1>? acceleratorConfig;
  /// The type of hardware accelerators associated with this node.
  final pulumi.Input<String>? acceleratorType;
  /// Optional. Whether Autocheckpoint is enabled.
  final pulumi.Input<bool>? autocheckpointEnabled;
  /// Optional. Boot disk configuration.
  final pulumi.Input<BootDiskConfig>? bootDiskConfig;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// The additional data disks for the Node.
  final pulumi.Input<List<AttachedDiskTpuV2alpha1>>? dataDisks;
  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String>? description;
  /// The health status of the TPU node.
  final pulumi.Input<NodeHealthTpuV2alpha1>? health;
  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final pulumi.Input<Map<String, String>>? metadata;
  /// Network configurations for the TPU node.
  final pulumi.Input<NetworkConfigTpuV2alpha1>? networkConfig;
  /// The unqualified resource name.
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? project;
  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;
  /// The runtime version running in the Node.
  final pulumi.Input<String> runtimeVersion;
  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfigTpuV2alpha1>? schedulingConfig;
  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final pulumi.Input<ServiceAccountTpuV2alpha1>? serviceAccount;
  /// Shielded Instance options.
  final pulumi.Input<ShieldedInstanceConfigTpuV2alpha1>? shieldedInstanceConfig;
  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [NodeTpuV2alpha1Args].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node.
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [autocheckpointEnabled] Optional. Whether Autocheckpoint is enabled.
  /// [bootDiskConfig] Optional. Boot disk configuration.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [dataDisks] The additional data disks for the Node.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] Optional.
  /// [metadata] Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  /// [networkConfig] Network configurations for the TPU node.
  /// [nodeId] The unqualified resource name.
  /// [project] Optional.
  /// [requestId] Idempotent request UUID.
  /// [runtimeVersion] The runtime version running in the Node.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [tags] Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  NodeTpuV2alpha1Args({
    this.acceleratorConfig,
    this.acceleratorType,
    this.autocheckpointEnabled,
    this.bootDiskConfig,
    this.cidrBlock,
    this.dataDisks,
    this.description,
    this.health,
    this.labels,
    this.location,
    this.metadata,
    this.networkConfig,
    this.nodeId,
    this.project,
    this.requestId,
    required this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<AcceleratorConfigTpuV2alpha1, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'acceleratorType': ?acceleratorType,
      'autocheckpointEnabled': ?autocheckpointEnabled,
      'bootDiskConfig': ?pulumi.Input.mapOptionalInputValue<BootDiskConfig, Map<String, dynamic>>(bootDiskConfig, (value) => value.toMap()),
      'cidrBlock': ?cidrBlock,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDiskTpuV2alpha1>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<AttachedDiskTpuV2alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'health': ?pulumi.Input.mapOptionalInputValue<NodeHealthTpuV2alpha1, String>(health, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'metadata': ?metadata,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigTpuV2alpha1, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeId': ?nodeId,
      'project': ?project,
      'requestId': ?requestId,
      'runtimeVersion': runtimeVersion,
      'schedulingConfig': ?pulumi.Input.mapOptionalInputValue<SchedulingConfigTpuV2alpha1, Map<String, dynamic>>(schedulingConfig, (value) => value.toMap()),
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccountTpuV2alpha1, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigTpuV2alpha1, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory NodeTpuV2alpha1Args.fromMap(Map<String, dynamic> map) {
    return NodeTpuV2alpha1Args(
      acceleratorConfig: map['acceleratorConfig'] == null ? null : (AcceleratorConfigTpuV2alpha1.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>())).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType'] as String).input(),
      autocheckpointEnabled: map['autocheckpointEnabled'] == null ? null : (map['autocheckpointEnabled'] as bool).input(),
      bootDiskConfig: map['bootDiskConfig'] == null ? null : (BootDiskConfig.fromMap((map['bootDiskConfig'] as Map).cast<String, dynamic>())).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<AttachedDiskTpuV2alpha1>(map['dataDisks'], (value) => AttachedDiskTpuV2alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      health: map['health'] == null ? null : (NodeHealthTpuV2alpha1.fromValue(map['health'] as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      networkConfig: map['networkConfig'] == null ? null : (NetworkConfigTpuV2alpha1.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      runtimeVersion: (map['runtimeVersion'] as String).input(),
      schedulingConfig: map['schedulingConfig'] == null ? null : (SchedulingConfigTpuV2alpha1.fromMap((map['schedulingConfig'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (ServiceAccountTpuV2alpha1.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>())).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (ShieldedInstanceConfigTpuV2alpha1.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

