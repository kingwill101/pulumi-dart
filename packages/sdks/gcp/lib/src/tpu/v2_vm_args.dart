// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_vm_accelerator_config.dart';
import 'v2_vm_data_disk.dart';
import 'v2_vm_network_config.dart';
import 'v2_vm_scheduling_config.dart';
import 'v2_vm_service_account.dart';
import 'v2_vm_shielded_instance_config.dart';

/// {@template pulumi_tpu_v2_vm_v2_vm_args_doc}
/// The set of arguments for V2Vm.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2_vm_v2_vm_args_doc}
class V2VmArgs {
  /// The AccleratorConfig for the TPU Node. `accelerator_config` cannot be used at the same time
  /// as `accelerator_type`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  /// Structure is documented below.
  final pulumi.Input<V2VmAcceleratorConfig>? acceleratorConfig;
  /// TPU accelerator type for the TPU. `accelerator_type` cannot be used at the same time as
  /// `accelerator_config`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  final pulumi.Input<String>? acceleratorType;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
  /// block would be wasteful (a node can only consume one IP address). Errors will occur if the
  /// CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
  /// with any subnetworks in the user's provided network, or the provided network is peered with
  /// another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// The additional data disks for the Node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmDataDisk>>? dataDisks;
  /// Text description of the TPU.
  final pulumi.Input<String>? description;
  /// Resource labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The immutable name of the TPU.
  final pulumi.Input<String>? name;
  /// Network configurations for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<V2VmNetworkConfig>? networkConfig;
  /// Repeated network configurations for the TPU node. This field is used to specify multiple
  /// network configs for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmNetworkConfig>>? networkConfigs;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Runtime version for the TPU.
  final pulumi.Input<String> runtimeVersion;
  /// The scheduling options for this node.
  /// Structure is documented below.
  final pulumi.Input<V2VmSchedulingConfig>? schedulingConfig;
  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// specified, the default compute service account will be used.
  /// Structure is documented below.
  final pulumi.Input<V2VmServiceAccount>? serviceAccount;
  /// Shielded Instance options.
  /// Structure is documented below.
  final pulumi.Input<V2VmShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;
  /// The GCP location for the TPU. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [V2VmArgs].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node. `accelerator_config` cannot be used at the same time
  /// [acceleratorType] TPU accelerator type for the TPU. `accelerator_type` cannot be used at the same time as
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// [dataDisks] The additional data disks for the Node.
  /// [description] Text description of the TPU.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [metadata] Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  /// [name] The immutable name of the TPU.
  /// [networkConfig] Network configurations for the TPU node.
  /// [networkConfigs] Repeated network configurations for the TPU node. This field is used to specify multiple
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeVersion] Runtime version for the TPU.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [tags] Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  /// [zone] The GCP location for the TPU. If it is not provided, the provider zone is used.
  V2VmArgs({
    pulumi.Output<V2VmAcceleratorConfig>? acceleratorConfig,
    pulumi.Output<String>? acceleratorType,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<List<V2VmDataDisk>>? dataDisks,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<V2VmNetworkConfig>? networkConfig,
    pulumi.Output<List<V2VmNetworkConfig>>? networkConfigs,
    pulumi.Output<String>? project,
    required pulumi.Output<String> runtimeVersion,
    pulumi.Output<V2VmSchedulingConfig>? schedulingConfig,
    pulumi.Output<V2VmServiceAccount>? serviceAccount,
    pulumi.Output<V2VmShieldedInstanceConfig>? shieldedInstanceConfig,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? zone,
  }) :
      acceleratorConfig = pulumi.Input.asOptionalInput<V2VmAcceleratorConfig>(acceleratorConfig),
      acceleratorType = pulumi.Input.asOptionalInput<String>(acceleratorType),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      dataDisks = pulumi.Input.asOptionalInput<List<V2VmDataDisk>>(dataDisks),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<V2VmNetworkConfig>(networkConfig),
      networkConfigs = pulumi.Input.asOptionalInput<List<V2VmNetworkConfig>>(networkConfigs),
      project = pulumi.Input.asOptionalInput<String>(project),
      runtimeVersion = pulumi.Input.asInput<String>(runtimeVersion),
      schedulingConfig = pulumi.Input.asOptionalInput<V2VmSchedulingConfig>(schedulingConfig),
      serviceAccount = pulumi.Input.asOptionalInput<V2VmServiceAccount>(serviceAccount),
      shieldedInstanceConfig = pulumi.Input.asOptionalInput<V2VmShieldedInstanceConfig>(shieldedInstanceConfig),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<V2VmAcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'acceleratorType': ?acceleratorType,
      'cidrBlock': ?cidrBlock,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<V2VmDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<V2VmDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'labels': ?labels,
      'metadata': ?metadata,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<V2VmNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'networkConfigs': ?pulumi.Input.mapOptionalInputValue<List<V2VmNetworkConfig>, List<Map<String, dynamic>>>(networkConfigs, (value) => pulumi.Input.encodeList<V2VmNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'runtimeVersion': runtimeVersion,
      'schedulingConfig': ?pulumi.Input.mapOptionalInputValue<V2VmSchedulingConfig, Map<String, dynamic>>(schedulingConfig, (value) => value.toMap()),
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<V2VmServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<V2VmShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory V2VmArgs.fromMap(Map<String, dynamic> map) {
    return V2VmArgs(
      acceleratorConfig: map['acceleratorConfig'] == null ? null : pulumi.Output.create<V2VmAcceleratorConfig>(V2VmAcceleratorConfig.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>())),
      acceleratorType: map['acceleratorType'] == null ? null : pulumi.Output.create<String>(map['acceleratorType'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<V2VmDataDisk>>(pulumi.Input.decodeList<V2VmDataDisk>(map['dataDisks'], (value) => V2VmDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<V2VmNetworkConfig>(V2VmNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      networkConfigs: map['networkConfigs'] == null ? null : pulumi.Output.create<List<V2VmNetworkConfig>>(pulumi.Input.decodeList<V2VmNetworkConfig>(map['networkConfigs'], (value) => V2VmNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      runtimeVersion: pulumi.Output.create<String>(map['runtimeVersion'] as String),
      schedulingConfig: map['schedulingConfig'] == null ? null : pulumi.Output.create<V2VmSchedulingConfig>(V2VmSchedulingConfig.fromMap((map['schedulingConfig'] as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<V2VmServiceAccount>(V2VmServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : pulumi.Output.create<V2VmShieldedInstanceConfig>(V2VmShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

