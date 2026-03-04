// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_tpu_v2alpha1.dart';
import 'attached_disk_response_tpu_v2alpha1.dart';
import 'boot_disk_config_response.dart';
import 'network_config_response_tpu_v2alpha1.dart';
import 'network_endpoint_response_tpu_v2alpha1.dart';
import 'scheduling_config_response_tpu_v2alpha1.dart';
import 'service_account_response_tpu_v2alpha1.dart';
import 'shielded_instance_config_response_tpu_v2alpha1.dart';
import 'symptom_response_tpu_v2alpha1.dart';

/// A TPU instance.
class NodeResponse {
  /// The AccleratorConfig for the TPU Node.
  final pulumi.Input<AcceleratorConfigResponseTpuV2alpha1> acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  final pulumi.Input<String> acceleratorType;

  /// The API version that created this Node.
  final pulumi.Input<String> apiVersion;

  /// Optional. Whether Autocheckpoint is enabled.
  final pulumi.Input<bool> autocheckpointEnabled;

  /// Optional. Boot disk configuration.
  final pulumi.Input<BootDiskConfigResponse> bootDiskConfig;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String> cidrBlock;

  /// The time when the node was created.
  final pulumi.Input<String> createTime;

  /// The additional data disks for the Node.
  final pulumi.Input<List<AttachedDiskResponseTpuV2alpha1>> dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String> description;

  /// The health status of the TPU node.
  final pulumi.Input<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  final pulumi.Input<String> healthDescription;

  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>> labels;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final pulumi.Input<Map<String, String>> metadata;

  /// Whether the Node belongs to a Multislice group.
  final pulumi.Input<bool> multisliceNode;

  /// Immutable. The name of the TPU.
  final pulumi.Input<String> name;

  /// Network configurations for the TPU node.
  final pulumi.Input<NetworkConfigResponseTpuV2alpha1> networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  final pulumi.Input<List<NetworkEndpointResponseTpuV2alpha1>> networkEndpoints;

  /// The qualified name of the QueuedResource that requested this Node.
  final pulumi.Input<String> queuedResource;

  /// The runtime version running in the Node.
  final pulumi.Input<String> runtimeVersion;

  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfigResponseTpuV2alpha1> schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final pulumi.Input<ServiceAccountResponseTpuV2alpha1> serviceAccount;

  /// Shielded Instance options.
  final pulumi.Input<ShieldedInstanceConfigResponseTpuV2alpha1>
  shieldedInstanceConfig;

  /// The current state for the TPU Node.
  final pulumi.Input<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  final pulumi.Input<List<SymptomResponseTpuV2alpha1>> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [NodeResponse].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node.
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [apiVersion] The API version that created this Node.
  /// [autocheckpointEnabled] Optional. Whether Autocheckpoint is enabled.
  /// [bootDiskConfig] Optional. Boot disk configuration.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [createTime] The time when the node was created.
  /// [dataDisks] The additional data disks for the Node.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [healthDescription] If this field is populated, it contains a description of why the TPU Node is unhealthy.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [metadata] Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  /// [multisliceNode] Whether the Node belongs to a Multislice group.
  /// [name] Immutable. The name of the TPU.
  /// [networkConfig] Network configurations for the TPU node.
  /// [networkEndpoints] The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  /// [queuedResource] The qualified name of the QueuedResource that requested this Node.
  /// [runtimeVersion] The runtime version running in the Node.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [state] The current state for the TPU Node.
  /// [symptoms] The Symptoms that have occurred to the TPU Node.
  /// [tags] Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  NodeResponse({
    required this.acceleratorConfig,
    required this.acceleratorType,
    required this.apiVersion,
    required this.autocheckpointEnabled,
    required this.bootDiskConfig,
    required this.cidrBlock,
    required this.createTime,
    required this.dataDisks,
    required this.description,
    required this.health,
    required this.healthDescription,
    required this.labels,
    required this.metadata,
    required this.multisliceNode,
    required this.name,
    required this.networkConfig,
    required this.networkEndpoints,
    required this.queuedResource,
    required this.runtimeVersion,
    required this.schedulingConfig,
    required this.serviceAccount,
    required this.shieldedInstanceConfig,
    required this.state,
    required this.symptoms,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig':
          pulumi.Input.mapInputValue<
            AcceleratorConfigResponseTpuV2alpha1,
            Map<String, dynamic>
          >(acceleratorConfig, (value) => value.toMap()),
      'acceleratorType': acceleratorType,
      'apiVersion': apiVersion,
      'autocheckpointEnabled': autocheckpointEnabled,
      'bootDiskConfig':
          pulumi.Input.mapInputValue<
            BootDiskConfigResponse,
            Map<String, dynamic>
          >(bootDiskConfig, (value) => value.toMap()),
      'cidrBlock': cidrBlock,
      'createTime': createTime,
      'dataDisks':
          pulumi.Input.mapInputValue<
            List<AttachedDiskResponseTpuV2alpha1>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  AttachedDiskResponseTpuV2alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': description,
      'health': health,
      'healthDescription': healthDescription,
      'labels': labels,
      'metadata': metadata,
      'multisliceNode': multisliceNode,
      'name': name,
      'networkConfig':
          pulumi.Input.mapInputValue<
            NetworkConfigResponseTpuV2alpha1,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'networkEndpoints':
          pulumi.Input.mapInputValue<
            List<NetworkEndpointResponseTpuV2alpha1>,
            List<Map<String, dynamic>>
          >(
            networkEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkEndpointResponseTpuV2alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queuedResource': queuedResource,
      'runtimeVersion': runtimeVersion,
      'schedulingConfig':
          pulumi.Input.mapInputValue<
            SchedulingConfigResponseTpuV2alpha1,
            Map<String, dynamic>
          >(schedulingConfig, (value) => value.toMap()),
      'serviceAccount':
          pulumi.Input.mapInputValue<
            ServiceAccountResponseTpuV2alpha1,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig':
          pulumi.Input.mapInputValue<
            ShieldedInstanceConfigResponseTpuV2alpha1,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'state': state,
      'symptoms':
          pulumi.Input.mapInputValue<
            List<SymptomResponseTpuV2alpha1>,
            List<Map<String, dynamic>>
          >(
            symptoms,
            (value) =>
                pulumi.Input.encodeList<
                  SymptomResponseTpuV2alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': tags,
    };
  }

  factory NodeResponse.fromMap(Map<String, dynamic> map) {
    return NodeResponse(
      acceleratorConfig: pulumi.Input.fromValue(
        AcceleratorConfigResponseTpuV2alpha1.fromMap(
          (map['acceleratorConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      apiVersion: pulumi.Input.fromValue(map['apiVersion'] as String),
      autocheckpointEnabled: pulumi.Input.fromValue(
        map['autocheckpointEnabled'] as bool,
      ),
      bootDiskConfig: pulumi.Input.fromValue(
        BootDiskConfigResponse.fromMap(
          (map['bootDiskConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataDisks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AttachedDiskResponseTpuV2alpha1>(
          map['dataDisks']!,
          (value) => AttachedDiskResponseTpuV2alpha1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthDescription: pulumi.Input.fromValue(
        map['healthDescription'] as String,
      ),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      metadata: pulumi.Input.fromValue(
        (map['metadata'] as Map).cast<String, String>(),
      ),
      multisliceNode: pulumi.Input.fromValue(map['multisliceNode'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkConfig: pulumi.Input.fromValue(
        NetworkConfigResponseTpuV2alpha1.fromMap(
          (map['networkConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      networkEndpoints: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NetworkEndpointResponseTpuV2alpha1>(
          map['networkEndpoints']!,
          (value) => NetworkEndpointResponseTpuV2alpha1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      queuedResource: pulumi.Input.fromValue(map['queuedResource'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      schedulingConfig: pulumi.Input.fromValue(
        SchedulingConfigResponseTpuV2alpha1.fromMap(
          (map['schedulingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      serviceAccount: pulumi.Input.fromValue(
        ServiceAccountResponseTpuV2alpha1.fromMap(
          (map['serviceAccount']! as Map).cast<String, dynamic>(),
        ),
      ),
      shieldedInstanceConfig: pulumi.Input.fromValue(
        ShieldedInstanceConfigResponseTpuV2alpha1.fromMap(
          (map['shieldedInstanceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      state: pulumi.Input.fromValue(map['state'] as String),
      symptoms: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SymptomResponseTpuV2alpha1>(
          map['symptoms']!,
          (value) => SymptomResponseTpuV2alpha1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}
