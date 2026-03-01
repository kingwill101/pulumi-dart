// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'attached_disk_response.dart';
import 'network_config_response.dart';
import 'network_endpoint_response_tpu_v2.dart';
import 'scheduling_config_response_tpu_v2.dart';
import 'service_account_response.dart';
import 'shielded_instance_config_response.dart';
import 'symptom_response_tpu_v2.dart';

/// Result data returned by getNode.
class GetNodeTpuV2Result {
  /// The AccleratorConfig for the TPU Node.
  final AcceleratorConfigResponse acceleratorConfig;
  /// Optional. The type of hardware accelerators associated with this node.
  final String acceleratorType;
  /// The API version that created this Node.
  final String apiVersion;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final String cidrBlock;
  /// The time when the node was created.
  final String createTime;
  /// The additional data disks for the Node.
  final List<AttachedDiskResponse> dataDisks;
  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final String description;
  /// The health status of the TPU node.
  final String health;
  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  final String healthDescription;
  /// Resource labels to represent user-provided metadata.
  final Map<String, String> labels;
  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final Map<String, String> metadata;
  /// Whether the Node belongs to a Multislice group.
  final bool multisliceNode;
  /// Immutable. The name of the TPU.
  final String name;
  /// Network configurations for the TPU node.
  final NetworkConfigResponse networkConfig;
  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  final List<NetworkEndpointResponseTpuV2> networkEndpoints;
  /// The qualified name of the QueuedResource that requested this Node.
  final String queuedResource;
  /// The runtime version running in the Node.
  final String runtimeVersion;
  /// The scheduling options for this node.
  final SchedulingConfigResponseTpuV2 schedulingConfig;
  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final ServiceAccountResponse serviceAccount;
  /// Shielded Instance options.
  final ShieldedInstanceConfigResponse shieldedInstanceConfig;
  /// The current state for the TPU Node.
  final String state;
  /// The Symptoms that have occurred to the TPU Node.
  final List<SymptomResponseTpuV2> symptoms;
  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final List<String> tags;

  /// Creates a new [GetNodeTpuV2Result].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node.
  /// [acceleratorType] Optional. The type of hardware accelerators associated with this node.
  /// [apiVersion] The API version that created this Node.
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
  GetNodeTpuV2Result({
    required this.acceleratorConfig,
    required this.acceleratorType,
    required this.apiVersion,
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
      'acceleratorConfig': acceleratorConfig.toMap(),
      'acceleratorType': acceleratorType,
      'apiVersion': apiVersion,
      'cidrBlock': cidrBlock,
      'createTime': createTime,
      'dataDisks': pulumi.Input.encodeList<AttachedDiskResponse, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'description': description,
      'health': health,
      'healthDescription': healthDescription,
      'labels': labels,
      'metadata': metadata,
      'multisliceNode': multisliceNode,
      'name': name,
      'networkConfig': networkConfig.toMap(),
      'networkEndpoints': pulumi.Input.encodeList<NetworkEndpointResponseTpuV2, Map<String, dynamic>>(networkEndpoints, (value) => value.toMap()),
      'queuedResource': queuedResource,
      'runtimeVersion': runtimeVersion,
      'schedulingConfig': schedulingConfig.toMap(),
      'serviceAccount': serviceAccount.toMap(),
      'shieldedInstanceConfig': shieldedInstanceConfig.toMap(),
      'state': state,
      'symptoms': pulumi.Input.encodeList<SymptomResponseTpuV2, Map<String, dynamic>>(symptoms, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetNodeTpuV2Result.fromMap(Map<String, dynamic> map) {
    return GetNodeTpuV2Result(
      acceleratorConfig: AcceleratorConfigResponse.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      acceleratorType: map['acceleratorType'] as String,
      apiVersion: map['apiVersion'] as String,
      cidrBlock: map['cidrBlock'] as String,
      createTime: map['createTime'] as String,
      dataDisks: pulumi.Input.decodeList<AttachedDiskResponse>(map['dataDisks'], (value) => AttachedDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      health: map['health'] as String,
      healthDescription: map['healthDescription'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      multisliceNode: map['multisliceNode'] as bool,
      name: map['name'] as String,
      networkConfig: NetworkConfigResponse.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      networkEndpoints: pulumi.Input.decodeList<NetworkEndpointResponseTpuV2>(map['networkEndpoints'], (value) => NetworkEndpointResponseTpuV2.fromMap((value as Map).cast<String, dynamic>())),
      queuedResource: map['queuedResource'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      schedulingConfig: SchedulingConfigResponseTpuV2.fromMap((map['schedulingConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: ServiceAccountResponse.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: ShieldedInstanceConfigResponse.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      symptoms: pulumi.Input.decodeList<SymptomResponseTpuV2>(map['symptoms'], (value) => SymptomResponseTpuV2.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}

