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

/// A TPU instance.
class Node {
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

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final pulumi.Input<Map<String, String>>? metadata;

  /// Network configurations for the TPU node.
  final pulumi.Input<NetworkConfigTpuV2alpha1>? networkConfig;

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

  /// Creates a new [Node].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node.
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [autocheckpointEnabled] Optional. Whether Autocheckpoint is enabled.
  /// [bootDiskConfig] Optional. Boot disk configuration.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [dataDisks] The additional data disks for the Node.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [metadata] Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  /// [networkConfig] Network configurations for the TPU node.
  /// [runtimeVersion] The runtime version running in the Node.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [tags] Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  Node({
    this.acceleratorConfig,
    this.acceleratorType,
    this.autocheckpointEnabled,
    this.bootDiskConfig,
    this.cidrBlock,
    this.dataDisks,
    this.description,
    this.health,
    this.labels,
    this.metadata,
    this.networkConfig,
    required this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AcceleratorConfigTpuV2alpha1,
            Map<String, dynamic>
          >(acceleratorConfig, (value) => value.toMap()),
      'acceleratorType': ?acceleratorType,
      'autocheckpointEnabled': ?autocheckpointEnabled,
      'bootDiskConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BootDiskConfig,
            Map<String, dynamic>
          >(bootDiskConfig, (value) => value.toMap()),
      'cidrBlock': ?cidrBlock,
      'dataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<AttachedDiskTpuV2alpha1>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  AttachedDiskTpuV2alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'health':
          ?pulumi.Input.mapOptionalInputValue<NodeHealthTpuV2alpha1, String>(
            health,
            (value) => value.wireValue,
          ),
      'labels': ?labels,
      'metadata': ?metadata,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkConfigTpuV2alpha1,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'runtimeVersion': runtimeVersion,
      'schedulingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SchedulingConfigTpuV2alpha1,
            Map<String, dynamic>
          >(schedulingConfig, (value) => value.toMap()),
      'serviceAccount':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAccountTpuV2alpha1,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ShieldedInstanceConfigTpuV2alpha1,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory Node.fromMap(Map<String, dynamic> map) {
    return Node(
      acceleratorConfig: (() {
        final guardedValue = map['acceleratorConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AcceleratorConfigTpuV2alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      acceleratorType: (() {
        final guardedValue = map['acceleratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autocheckpointEnabled: (() {
        final guardedValue = map['autocheckpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      bootDiskConfig: (() {
        final guardedValue = map['bootDiskConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BootDiskConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataDisks: (() {
        final guardedValue = map['dataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AttachedDiskTpuV2alpha1>(
            guardedValue,
            (value) => AttachedDiskTpuV2alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      health: (() {
        final guardedValue = map['health'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeHealthTpuV2alpha1.fromValue(guardedValue as String),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      networkConfig: (() {
        final guardedValue = map['networkConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkConfigTpuV2alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      schedulingConfig: (() {
        final guardedValue = map['schedulingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SchedulingConfigTpuV2alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAccountTpuV2alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      shieldedInstanceConfig: (() {
        final guardedValue = map['shieldedInstanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShieldedInstanceConfigTpuV2alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
