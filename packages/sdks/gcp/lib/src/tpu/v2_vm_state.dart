// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_vm_accelerator_config.dart';
import 'v2_vm_data_disk.dart';
import 'v2_vm_network_config.dart';
import 'v2_vm_network_endpoint.dart';
import 'v2_vm_scheduling_config.dart';
import 'v2_vm_service_account.dart';
import 'v2_vm_shielded_instance_config.dart';
import 'v2_vm_symptom.dart';

/// Input properties used for looking up and filtering V2Vm resources.
class V2VmState {
  /// The AccleratorConfig for the TPU Node. `accelerator_config` cannot be used at the same time
  /// as `accelerator_type`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  /// Structure is documented below.
  final pulumi.Input<V2VmAcceleratorConfig>? acceleratorConfig;
  /// TPU accelerator type for the TPU. `accelerator_type` cannot be used at the same time as
  /// `accelerator_config`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  final pulumi.Input<String>? acceleratorType;
  /// The API version that created this Node.
  final pulumi.Input<String>? apiVersion;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The health status of the TPU node.
  final pulumi.Input<String>? health;
  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  final pulumi.Input<String>? healthDescription;
  /// Resource labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Whether the Node belongs to a Multislice group.
  final pulumi.Input<bool>? multisliceNode;
  /// The immutable name of the TPU.
  final pulumi.Input<String>? name;
  /// Network configurations for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<V2VmNetworkConfig>? networkConfig;
  /// Repeated network configurations for the TPU node. This field is used to specify multiple
  /// network configs for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmNetworkConfig>>? networkConfigs;
  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that
  /// runtime clients of the node reach out to the 0th entry in this map first.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmNetworkEndpoint>>? networkEndpoints;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The qualified name of the QueuedResource that requested this Node.
  final pulumi.Input<String>? queuedResource;
  /// Runtime version for the TPU.
  final pulumi.Input<String>? runtimeVersion;
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
  /// The current state for the TPU Node.
  final pulumi.Input<String>? state;
  /// The Symptoms that have occurred to the TPU Node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmSymptom>>? symptoms;
  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;
  /// The GCP location for the TPU. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [V2VmState].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node. `accelerator_config` cannot be used at the same time
  /// [acceleratorType] TPU accelerator type for the TPU. `accelerator_type` cannot be used at the same time as
  /// [apiVersion] The API version that created this Node.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// [dataDisks] The additional data disks for the Node.
  /// [description] Text description of the TPU.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [health] The health status of the TPU node.
  /// [healthDescription] If this field is populated, it contains a description of why the TPU Node is unhealthy.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [metadata] Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  /// [multisliceNode] Whether the Node belongs to a Multislice group.
  /// [name] The immutable name of the TPU.
  /// [networkConfig] Network configurations for the TPU node.
  /// [networkConfigs] Repeated network configurations for the TPU node. This field is used to specify multiple
  /// [networkEndpoints] The network endpoints where TPU workers can be accessed and sent work. It is recommended that
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [queuedResource] The qualified name of the QueuedResource that requested this Node.
  /// [runtimeVersion] Runtime version for the TPU.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [state] The current state for the TPU Node.
  /// [symptoms] The Symptoms that have occurred to the TPU Node.
  /// [tags] Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  /// [zone] The GCP location for the TPU. If it is not provided, the provider zone is used.
  V2VmState({
    this.acceleratorConfig,
    this.acceleratorType,
    this.apiVersion,
    this.cidrBlock,
    this.dataDisks,
    this.description,
    this.effectiveLabels,
    this.health,
    this.healthDescription,
    this.labels,
    this.metadata,
    this.multisliceNode,
    this.name,
    this.networkConfig,
    this.networkConfigs,
    this.networkEndpoints,
    this.project,
    this.pulumiLabels,
    this.queuedResource,
    this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.state,
    this.symptoms,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<V2VmAcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'acceleratorType': ?acceleratorType,
      'apiVersion': ?apiVersion,
      'cidrBlock': ?cidrBlock,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<V2VmDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<V2VmDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'health': ?health,
      'healthDescription': ?healthDescription,
      'labels': ?labels,
      'metadata': ?metadata,
      'multisliceNode': ?multisliceNode,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<V2VmNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'networkConfigs': ?pulumi.Input.mapOptionalInputValue<List<V2VmNetworkConfig>, List<Map<String, dynamic>>>(networkConfigs, (value) => pulumi.Input.encodeList<V2VmNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkEndpoints': ?pulumi.Input.mapOptionalInputValue<List<V2VmNetworkEndpoint>, List<Map<String, dynamic>>>(networkEndpoints, (value) => pulumi.Input.encodeList<V2VmNetworkEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'queuedResource': ?queuedResource,
      'runtimeVersion': ?runtimeVersion,
      'schedulingConfig': ?pulumi.Input.mapOptionalInputValue<V2VmSchedulingConfig, Map<String, dynamic>>(schedulingConfig, (value) => value.toMap()),
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<V2VmServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<V2VmShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'state': ?state,
      'symptoms': ?pulumi.Input.mapOptionalInputValue<List<V2VmSymptom>, List<Map<String, dynamic>>>(symptoms, (value) => pulumi.Input.encodeList<V2VmSymptom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory V2VmState.fromMap(Map<String, dynamic> map) {
    return V2VmState(
      acceleratorConfig: map['acceleratorConfig'] == null ? null : (V2VmAcceleratorConfig.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>())).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType'] as String).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<V2VmDataDisk>(map['dataDisks'], (value) => V2VmDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      health: map['health'] == null ? null : (map['health'] as String).input(),
      healthDescription: map['healthDescription'] == null ? null : (map['healthDescription'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      multisliceNode: map['multisliceNode'] == null ? null : (map['multisliceNode'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (V2VmNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      networkConfigs: map['networkConfigs'] == null ? null : (pulumi.Input.decodeList<V2VmNetworkConfig>(map['networkConfigs'], (value) => V2VmNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkEndpoints: map['networkEndpoints'] == null ? null : (pulumi.Input.decodeList<V2VmNetworkEndpoint>(map['networkEndpoints'], (value) => V2VmNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      queuedResource: map['queuedResource'] == null ? null : (map['queuedResource'] as String).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
      schedulingConfig: map['schedulingConfig'] == null ? null : (V2VmSchedulingConfig.fromMap((map['schedulingConfig'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (V2VmServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>())).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (V2VmShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      symptoms: map['symptoms'] == null ? null : (pulumi.Input.decodeList<V2VmSymptom>(map['symptoms'], (value) => V2VmSymptom.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

