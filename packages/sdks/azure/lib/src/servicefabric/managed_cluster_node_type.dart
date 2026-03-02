// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_node_type_vm_secret.dart';

class ManagedClusterNodeType {
  /// Sets the port range available for applications. Format is `<from_port>-<to_port>`, for example `10000-20000`.
  final pulumi.Input<String> applicationPortRange;
  /// Specifies a list of key/value pairs used to set capacity tags for this node type.
  final pulumi.Input<Map<String, String>>? capacities;
  /// The size of the data disk in gigabytes..
  final pulumi.Input<int> dataDiskSizeGb;
  /// The type of the disk to use for storing data. It can be one of `Premium_LRS`, `Standard_LRS`, or `StandardSSD_LRS`. Defaults to `Standard_LRS`.
  final pulumi.Input<String>? dataDiskType;
  /// Sets the port range available for the OS. Format is `<from_port>-<to_port>`, for example `10000-20000`. There has to be at least 255 ports available and cannot overlap with `application_port_range`..
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
  /// [applicationPortRange] Sets the port range available for applications. Format is `<from_port>-<to_port>`, for example `10000-20000`.
  /// [capacities] Specifies a list of key/value pairs used to set capacity tags for this node type.
  /// [dataDiskSizeGb] The size of the data disk in gigabytes..
  /// [dataDiskType] The type of the disk to use for storing data. It can be one of `Premium_LRS`, `Standard_LRS`, or `StandardSSD_LRS`. Defaults to `Standard_LRS`.
  /// [ephemeralPortRange] Sets the port range available for the OS. Format is `<from_port>-<to_port>`, for example `10000-20000`. There has to be at least 255 ports available and cannot overlap with `application_port_range`..
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
  ManagedClusterNodeType({
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
      applicationPortRange: (map['applicationPortRange'] as String).input(),
      capacities: map['capacities'] == null ? null : ((map['capacities']! as Map).cast<String, String>()).input(),
      dataDiskSizeGb: (map['dataDiskSizeGb'] as int).input(),
      dataDiskType: map['dataDiskType'] == null ? null : (map['dataDiskType']! as String).input(),
      ephemeralPortRange: (map['ephemeralPortRange'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      multiplePlacementGroupsEnabled: map['multiplePlacementGroupsEnabled'] == null ? null : (map['multiplePlacementGroupsEnabled']! as bool).input(),
      name: (map['name'] as String).input(),
      placementProperties: map['placementProperties'] == null ? null : ((map['placementProperties']! as Map).cast<String, String>()).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
      stateless: map['stateless'] == null ? null : (map['stateless']! as bool).input(),
      vmImageOffer: (map['vmImageOffer'] as String).input(),
      vmImagePublisher: (map['vmImagePublisher'] as String).input(),
      vmImageSku: (map['vmImageSku'] as String).input(),
      vmImageVersion: (map['vmImageVersion'] as String).input(),
      vmInstanceCount: (map['vmInstanceCount'] as int).input(),
      vmSecrets: map['vmSecrets'] == null ? null : (pulumi.Input.decodeList<ManagedClusterNodeTypeVmSecret>(map['vmSecrets']!, (value) => ManagedClusterNodeTypeVmSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmSize: (map['vmSize'] as String).input(),
    );
  }
}

