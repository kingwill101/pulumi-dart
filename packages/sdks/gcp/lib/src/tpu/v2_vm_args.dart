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
  /// The AccleratorConfig for the TPU Node. `acceleratorConfig` cannot be used at the same time
  /// as `acceleratorType`. If neither is specified, `acceleratorType` defaults to 'v2-8'.
  /// Structure is documented below.
  final pulumi.Input<V2VmAcceleratorConfig?>? acceleratorConfig;
  /// TPU accelerator type for the TPU. `acceleratorType` cannot be used at the same time as
  /// `acceleratorConfig`. If neither is specified, `acceleratorType` defaults to 'v2-8'.
  final pulumi.Input<String?>? acceleratorType;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
  /// block would be wasteful (a node can only consume one IP address). Errors will occur if the
  /// CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
  /// with any subnetworks in the user's provided network, or the provided network is peered with
  /// another network that is using that CIDR block.
  final pulumi.Input<String?>? cidrBlock;
  /// The additional data disks for the Node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmDataDisk>?>? dataDisks;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Text description of the TPU.
  final pulumi.Input<String?>? description;
  /// Resource labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The immutable name of the TPU.
  final pulumi.Input<String?>? name;
  /// Network configurations for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<V2VmNetworkConfig?>? networkConfig;
  /// Repeated network configurations for the TPU node. This field is used to specify multiple
  /// network configs for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmNetworkConfig>?>? networkConfigs;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Runtime version for the TPU.
  final pulumi.Input<String> runtimeVersion;
  /// The scheduling options for this node.
  /// Structure is documented below.
  final pulumi.Input<V2VmSchedulingConfig?>? schedulingConfig;
  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// specified, the default compute service account will be used.
  /// Structure is documented below.
  final pulumi.Input<V2VmServiceAccount?>? serviceAccount;
  /// Shielded Instance options.
  /// Structure is documented below.
  final pulumi.Input<V2VmShieldedInstanceConfig?>? shieldedInstanceConfig;
  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>?>? tags;
  /// The GCP location for the TPU. If it is not provided, the provider zone is used.
  final pulumi.Input<String?>? zone;

  /// Creates a new [V2VmArgs].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node. `acceleratorConfig` cannot be used at the same time
  /// [acceleratorType] TPU accelerator type for the TPU. `acceleratorType` cannot be used at the same time as
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// [dataDisks] The additional data disks for the Node.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const V2VmArgs({
    this.acceleratorConfig,
    this.acceleratorType,
    this.cidrBlock,
    this.dataDisks,
    this.deletionPolicy,
    this.description,
    this.labels,
    this.metadata,
    this.name,
    this.networkConfig,
    this.networkConfigs,
    this.project,
    required this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<V2VmAcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'acceleratorType': ?acceleratorType,
      'cidrBlock': ?cidrBlock,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<V2VmDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<V2VmDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
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
      acceleratorConfig: (() { final guardedValue = map['acceleratorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2VmAcceleratorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2VmDataDisk>(guardedValue, (value) => V2VmDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2VmNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkConfigs: (() { final guardedValue = map['networkConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2VmNetworkConfig>(guardedValue, (value) => V2VmNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      schedulingConfig: (() { final guardedValue = map['schedulingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2VmSchedulingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2VmServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2VmShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
