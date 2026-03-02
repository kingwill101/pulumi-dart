// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_node_resources.dart';

/// CSINodeDriver holds information about the specification of one CSI driver installed on a node
class CSINodeDriver {
  /// allocatable represents the volume resources of a node that are available for scheduling. This field is beta.
  final pulumi.Input<VolumeNodeResources>? allocatable;
  /// name represents the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
  final pulumi.Input<String> name;
  /// nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as "node1", but the storage system may refer to the same node as "nodeA". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. "nodeA" instead of "node1". This field is required.
  final pulumi.Input<String> nodeID;
  /// topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. "company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.
  final pulumi.Input<List<String>>? topologyKeys;

  /// Creates a new [CSINodeDriver].
  /// [allocatable] allocatable represents the volume resources of a node that are available for scheduling. This field is beta.
  /// [name] name represents the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
  /// [nodeID] nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as "node1", but the storage system may refer to the same node as "nodeA". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. "nodeA" instead of "node1". This field is required.
  /// [topologyKeys] topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. "company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.
  CSINodeDriver({
    this.allocatable,
    required this.name,
    required this.nodeID,
    this.topologyKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatable': ?pulumi.Input.mapOptionalInputValue<VolumeNodeResources, Map<String, dynamic>>(allocatable, (value) => value.toMap()),
      'name': name,
      'nodeID': nodeID,
      'topologyKeys': ?topologyKeys,
    };
  }

  factory CSINodeDriver.fromMap(Map<String, dynamic> map) {
    return CSINodeDriver(
      allocatable: map['allocatable'] == null ? null : (VolumeNodeResources.fromMap((map['allocatable']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      nodeID: (map['nodeID'] as String).input(),
      topologyKeys: map['topologyKeys'] == null ? null : ((map['topologyKeys']! as List).cast<String>()).input(),
    );
  }
}

