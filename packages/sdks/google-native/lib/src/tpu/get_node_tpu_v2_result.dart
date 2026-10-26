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
  final AcceleratorConfigResponse? acceleratorConfig;
  /// Optional. The type of hardware accelerators associated with this node.
  final String? acceleratorType;
  /// The API version that created this Node.
  final String? apiVersion;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final String? cidrBlock;
  /// The time when the node was created.
  final String? createTime;
  /// The additional data disks for the Node.
  final List<AttachedDiskResponse>? dataDisks;
  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final String? description;
  /// The health status of the TPU node.
  final String? health;
  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  final String? healthDescription;
  /// Resource labels to represent user-provided metadata.
  final Map<String, String>? labels;
  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final Map<String, String>? metadata;
  /// Whether the Node belongs to a Multislice group.
  final bool? multisliceNode;
  /// Immutable. The name of the TPU.
  final String? name;
  /// Network configurations for the TPU node.
  final NetworkConfigResponse? networkConfig;
  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  final List<NetworkEndpointResponseTpuV2>? networkEndpoints;
  /// The qualified name of the QueuedResource that requested this Node.
  final String? queuedResource;
  /// The runtime version running in the Node.
  final String? runtimeVersion;
  /// The scheduling options for this node.
  final SchedulingConfigResponseTpuV2? schedulingConfig;
  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final ServiceAccountResponse? serviceAccount;
  /// Shielded Instance options.
  final ShieldedInstanceConfigResponse? shieldedInstanceConfig;
  /// The current state for the TPU Node.
  final String? state;
  /// The Symptoms that have occurred to the TPU Node.
  final List<SymptomResponseTpuV2>? symptoms;
  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final List<String>? tags;

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
  const GetNodeTpuV2Result({
    this.acceleratorConfig,
    this.acceleratorType,
    this.apiVersion,
    this.cidrBlock,
    this.createTime,
    this.dataDisks,
    this.description,
    this.health,
    this.healthDescription,
    this.labels,
    this.metadata,
    this.multisliceNode,
    this.name,
    this.networkConfig,
    this.networkEndpoints,
    this.queuedResource,
    this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.state,
    this.symptoms,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?acceleratorConfig?.toMap(),
      'acceleratorType': ?acceleratorType,
      'apiVersion': ?apiVersion,
      'cidrBlock': ?cidrBlock,
      'createTime': ?createTime,
      'dataDisks': ?(() { final guardedValue = dataDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<AttachedDiskResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'health': ?health,
      'healthDescription': ?healthDescription,
      'labels': ?labels,
      'metadata': ?metadata,
      'multisliceNode': ?multisliceNode,
      'name': ?name,
      'networkConfig': ?networkConfig?.toMap(),
      'networkEndpoints': ?(() { final guardedValue = networkEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkEndpointResponseTpuV2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'queuedResource': ?queuedResource,
      'runtimeVersion': ?runtimeVersion,
      'schedulingConfig': ?schedulingConfig?.toMap(),
      'serviceAccount': ?serviceAccount?.toMap(),
      'shieldedInstanceConfig': ?shieldedInstanceConfig?.toMap(),
      'state': ?state,
      'symptoms': ?(() { final guardedValue = symptoms; if (guardedValue == null) return null; return pulumi.Input.encodeList<SymptomResponseTpuV2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetNodeTpuV2Result.fromMap(Map<String, dynamic> map) {
    return GetNodeTpuV2Result(
      acceleratorConfig: (() { final guardedValue = map['acceleratorConfig']; if (guardedValue == null) return null; return AcceleratorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttachedDiskResponse>(guardedValue, (value) => AttachedDiskResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthDescription: (() { final guardedValue = map['healthDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      multisliceNode: (() { final guardedValue = map['multisliceNode']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      networkEndpoints: (() { final guardedValue = map['networkEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkEndpointResponseTpuV2>(guardedValue, (value) => NetworkEndpointResponseTpuV2.fromMap((value as Map).cast<String, dynamic>())); })(),
      queuedResource: (() { final guardedValue = map['queuedResource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedulingConfig: (() { final guardedValue = map['schedulingConfig']; if (guardedValue == null) return null; return SchedulingConfigResponseTpuV2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return ServiceAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return ShieldedInstanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      symptoms: (() { final guardedValue = map['symptoms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SymptomResponseTpuV2>(guardedValue, (value) => SymptomResponseTpuV2.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
