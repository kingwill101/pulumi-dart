// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_node_type_vm_secret.dart';

class ManagedClusterNodeType {
  /// Sets the port range available for applications. Format is `&lt;from_port&gt;-&lt;to_port&gt;`, for example `10000-20000`.
  final pulumi.Input<String> applicationPortRange;
  /// Specifies a list of key/value pairs used to set capacity tags for this node type.
  final pulumi.Input<Map<String, String>>? capacities;
  /// The size of the data disk in gigabytes..
  final pulumi.Input<int> dataDiskSizeGb;
  /// The type of the disk to use for storing data. It can be one of `Premium_LRS`, `Standard_LRS`, or `StandardSSD_LRS`. Defaults to `Standard_LRS`.
  final pulumi.Input<String>? dataDiskType;
  /// Sets the port range available for the OS. Format is `&lt;from_port&gt;-&lt;to_port&gt;`, for example `10000-20000`. There has to be at least 255 ports available and cannot overlap with `application_port_range`..
  final pulumi.Input<String> ephemeralPortRange;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? id;
  /// If set the node type can be composed of multiple placement groups.
  final pulumi.Input<bool>? multiplePlacementGroupsEnabled;
  /// The name which should be used for this node type.
  final pulumi.Input<String> name;
  /// Specifies a list of placement tags that can be used to indicate where services should run..
  final pulumi.Input<Map<String, String>>? placementProperties;
  /// If set to true, system services will run on this node type. Only one node type should be marked as primary. Primary node type cannot be deleted or changed once they're created.
  final pulumi.Input<bool>? primary;
  /// If set to true, only stateless workloads can run on this node type.
  final pulumi.Input<bool>? stateless;
  /// The offer type of the marketplace image cluster VMs will use.
  final pulumi.Input<String> vmImageOffer;
  /// The publisher of the marketplace image cluster VMs will use.
  final pulumi.Input<String> vmImagePublisher;
  /// The SKU of the marketplace image cluster VMs will use.
  final pulumi.Input<String> vmImageSku;
  /// The version of the marketplace image cluster VMs will use.
  final pulumi.Input<String> vmImageVersion;
  /// The number of instances this node type will launch.
  final pulumi.Input<int> vmInstanceCount;
  /// One or more `vm_secrets` blocks as defined below.
  final pulumi.Input<List<ManagedClusterNodeTypeVmSecret>>? vmSecrets;
  /// The size of the instances in this node type.
  final pulumi.Input<String> vmSize;

  /// Creates a new [ManagedClusterNodeType].
  /// [applicationPortRange] Sets the port range available for applications. Format is `&lt;from_port&gt;-&lt;to_port&gt;`, for example `10000-20000`.
  /// [capacities] Specifies a list of key/value pairs used to set capacity tags for this node type.
  /// [dataDiskSizeGb] The size of the data disk in gigabytes..
  /// [dataDiskType] The type of the disk to use for storing data. It can be one of `Premium_LRS`, `Standard_LRS`, or `StandardSSD_LRS`. Defaults to `Standard_LRS`.
  /// [ephemeralPortRange] Sets the port range available for the OS. Format is `&lt;from_port&gt;-&lt;to_port&gt;`, for example `10000-20000`. There has to be at least 255 ports available and cannot overlap with `application_port_range`..
  /// [id] The ID of the Resource Group.
  /// [multiplePlacementGroupsEnabled] If set the node type can be composed of multiple placement groups.
  /// [name] The name which should be used for this node type.
  /// [placementProperties] Specifies a list of placement tags that can be used to indicate where services should run..
  /// [primary] If set to true, system services will run on this node type. Only one node type should be marked as primary. Primary node type cannot be deleted or changed once they're created.
  /// [stateless] If set to true, only stateless workloads can run on this node type.
  /// [vmImageOffer] The offer type of the marketplace image cluster VMs will use.
  /// [vmImagePublisher] The publisher of the marketplace image cluster VMs will use.
  /// [vmImageSku] The SKU of the marketplace image cluster VMs will use.
  /// [vmImageVersion] The version of the marketplace image cluster VMs will use.
  /// [vmInstanceCount] The number of instances this node type will launch.
  /// [vmSecrets] One or more `vm_secrets` blocks as defined below.
  /// [vmSize] The size of the instances in this node type.
  const ManagedClusterNodeType({
    required this.applicationPortRange,
    this.capacities,
    required this.dataDiskSizeGb,
    this.dataDiskType,
    required this.ephemeralPortRange,
    this.id,
    this.multiplePlacementGroupsEnabled,
    required this.name,
    this.placementProperties,
    this.primary,
    this.stateless,
    required this.vmImageOffer,
    required this.vmImagePublisher,
    required this.vmImageSku,
    required this.vmImageVersion,
    required this.vmInstanceCount,
    this.vmSecrets,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPortRange': applicationPortRange,
      'capacities': ?capacities,
      'dataDiskSizeGb': dataDiskSizeGb,
      'dataDiskType': ?dataDiskType,
      'ephemeralPortRange': ephemeralPortRange,
      'id': ?id,
      'multiplePlacementGroupsEnabled': ?multiplePlacementGroupsEnabled,
      'name': name,
      'placementProperties': ?placementProperties,
      'primary': ?primary,
      'stateless': ?stateless,
      'vmImageOffer': vmImageOffer,
      'vmImagePublisher': vmImagePublisher,
      'vmImageSku': vmImageSku,
      'vmImageVersion': vmImageVersion,
      'vmInstanceCount': vmInstanceCount,
      'vmSecrets': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterNodeTypeVmSecret>, List<Map<String, dynamic>>>(vmSecrets, (value) => pulumi.Input.encodeList<ManagedClusterNodeTypeVmSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': vmSize,
    };
  }

  factory ManagedClusterNodeType.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNodeType(
      applicationPortRange: pulumi.Input.fromValue(map['applicationPortRange'] as String),
      capacities: (() { final guardedValue = map['capacities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      dataDiskSizeGb: pulumi.Input.fromValue(map['dataDiskSizeGb'] as int),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ephemeralPortRange: pulumi.Input.fromValue(map['ephemeralPortRange'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiplePlacementGroupsEnabled: (() { final guardedValue = map['multiplePlacementGroupsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      placementProperties: (() { final guardedValue = map['placementProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stateless: (() { final guardedValue = map['stateless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vmImageOffer: pulumi.Input.fromValue(map['vmImageOffer'] as String),
      vmImagePublisher: pulumi.Input.fromValue(map['vmImagePublisher'] as String),
      vmImageSku: pulumi.Input.fromValue(map['vmImageSku'] as String),
      vmImageVersion: pulumi.Input.fromValue(map['vmImageVersion'] as String),
      vmInstanceCount: pulumi.Input.fromValue(map['vmInstanceCount'] as int),
      vmSecrets: (() { final guardedValue = map['vmSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterNodeTypeVmSecret>(guardedValue, (value) => ManagedClusterNodeTypeVmSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmSize: pulumi.Input.fromValue(map['vmSize'] as String),
    );
  }
}

