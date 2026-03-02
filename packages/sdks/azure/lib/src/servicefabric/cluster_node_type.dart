// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_type_application_ports.dart';
import 'cluster_node_type_ephemeral_ports.dart';

class ClusterNodeType {
  /// A `application_ports` block as defined below.
  final pulumi.Input<ClusterNodeTypeApplicationPorts>? applicationPorts;
  /// The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  final pulumi.Input<Map<String, String>>? capacities;
  /// The Port used for the Client Endpoint for this Node Type.
  final pulumi.Input<int> clientEndpointPort;
  /// The Durability Level for this Node Type. Possible values include `Bronze`, `Gold` and `Silver`. Defaults to `Bronze`.
  final pulumi.Input<String>? durabilityLevel;
  /// A `ephemeral_ports` block as defined below.
  final pulumi.Input<ClusterNodeTypeEphemeralPorts>? ephemeralPorts;
  /// The Port used for the HTTP Endpoint for this Node Type.
  final pulumi.Input<int> httpEndpointPort;
  /// The number of nodes for this Node Type.
  final pulumi.Input<int> instanceCount;
  /// Is this the Primary Node Type?
  final pulumi.Input<bool> isPrimary;
  /// Should this node type run only stateless services?
  final pulumi.Input<bool>? isStateless;
  /// Does this node type span availability zones?
  final pulumi.Input<bool>? multipleAvailabilityZones;
  /// The name of the Node Type.
  final pulumi.Input<String> name;
  /// The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  final pulumi.Input<Map<String, String>>? placementProperties;
  /// The Port used for the Reverse Proxy Endpoint for this Node Type. Changing this will upgrade the cluster.
  final pulumi.Input<int>? reverseProxyEndpointPort;

  /// Creates a new [ClusterNodeType].
  /// [applicationPorts] A `application_ports` block as defined below.
  /// [capacities] The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  /// [clientEndpointPort] The Port used for the Client Endpoint for this Node Type.
  /// [durabilityLevel] The Durability Level for this Node Type. Possible values include `Bronze`, `Gold` and `Silver`. Defaults to `Bronze`.
  /// [ephemeralPorts] A `ephemeral_ports` block as defined below.
  /// [httpEndpointPort] The Port used for the HTTP Endpoint for this Node Type.
  /// [instanceCount] The number of nodes for this Node Type.
  /// [isPrimary] Is this the Primary Node Type?
  /// [isStateless] Should this node type run only stateless services?
  /// [multipleAvailabilityZones] Does this node type span availability zones?
  /// [name] The name of the Node Type.
  /// [placementProperties] The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  /// [reverseProxyEndpointPort] The Port used for the Reverse Proxy Endpoint for this Node Type. Changing this will upgrade the cluster.
  ClusterNodeType({
    this.applicationPorts,
    this.capacities,
    required this.clientEndpointPort,
    this.durabilityLevel,
    this.ephemeralPorts,
    required this.httpEndpointPort,
    required this.instanceCount,
    required this.isPrimary,
    this.isStateless,
    this.multipleAvailabilityZones,
    required this.name,
    this.placementProperties,
    this.reverseProxyEndpointPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPorts': ?pulumi.Input.mapOptionalInputValue<ClusterNodeTypeApplicationPorts, Map<String, dynamic>>(applicationPorts, (value) => value.toMap()),
      'capacities': ?capacities,
      'clientEndpointPort': clientEndpointPort,
      'durabilityLevel': ?durabilityLevel,
      'ephemeralPorts': ?pulumi.Input.mapOptionalInputValue<ClusterNodeTypeEphemeralPorts, Map<String, dynamic>>(ephemeralPorts, (value) => value.toMap()),
      'httpEndpointPort': httpEndpointPort,
      'instanceCount': instanceCount,
      'isPrimary': isPrimary,
      'isStateless': ?isStateless,
      'multipleAvailabilityZones': ?multipleAvailabilityZones,
      'name': name,
      'placementProperties': ?placementProperties,
      'reverseProxyEndpointPort': ?reverseProxyEndpointPort,
    };
  }

  factory ClusterNodeType.fromMap(Map<String, dynamic> map) {
    return ClusterNodeType(
      applicationPorts: map['applicationPorts'] == null ? null : (ClusterNodeTypeApplicationPorts.fromMap((map['applicationPorts']! as Map).cast<String, dynamic>())).input(),
      capacities: map['capacities'] == null ? null : ((map['capacities']! as Map).cast<String, String>()).input(),
      clientEndpointPort: (map['clientEndpointPort'] as int).input(),
      durabilityLevel: map['durabilityLevel'] == null ? null : (map['durabilityLevel']! as String).input(),
      ephemeralPorts: map['ephemeralPorts'] == null ? null : (ClusterNodeTypeEphemeralPorts.fromMap((map['ephemeralPorts']! as Map).cast<String, dynamic>())).input(),
      httpEndpointPort: (map['httpEndpointPort'] as int).input(),
      instanceCount: (map['instanceCount'] as int).input(),
      isPrimary: (map['isPrimary'] as bool).input(),
      isStateless: map['isStateless'] == null ? null : (map['isStateless']! as bool).input(),
      multipleAvailabilityZones: map['multipleAvailabilityZones'] == null ? null : (map['multipleAvailabilityZones']! as bool).input(),
      name: (map['name'] as String).input(),
      placementProperties: map['placementProperties'] == null ? null : ((map['placementProperties']! as Map).cast<String, String>()).input(),
      reverseProxyEndpointPort: map['reverseProxyEndpointPort'] == null ? null : (map['reverseProxyEndpointPort']! as int).input(),
    );
  }
}

