// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_type_application_ports.dart';
import 'cluster_node_type_ephemeral_ports.dart';

class ClusterNodeType {
  /// A `application_ports` block as defined below.
  final ClusterNodeTypeApplicationPorts? applicationPorts;
  /// The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  final Map<String, String>? capacities;
  /// The Port used for the Client Endpoint for this Node Type.
  final int clientEndpointPort;
  /// The Durability Level for this Node Type. Possible values include `Bronze`, `Gold` and `Silver`. Defaults to `Bronze`.
  final String? durabilityLevel;
  /// A `ephemeral_ports` block as defined below.
  final ClusterNodeTypeEphemeralPorts? ephemeralPorts;
  /// The Port used for the HTTP Endpoint for this Node Type.
  final int httpEndpointPort;
  /// The number of nodes for this Node Type.
  final int instanceCount;
  /// Is this the Primary Node Type?
  final bool isPrimary;
  /// Should this node type run only stateless services?
  final bool? isStateless;
  /// Does this node type span availability zones?
  final bool? multipleAvailabilityZones;
  /// The name of the Node Type.
  final String name;
  /// The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  final Map<String, String>? placementProperties;
  /// The Port used for the Reverse Proxy Endpoint for this Node Type. Changing this will upgrade the cluster.
  final int? reverseProxyEndpointPort;

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
      'applicationPorts': ?applicationPorts == null ? null : applicationPorts!.toMap(),
      'capacities': ?capacities,
      'clientEndpointPort': clientEndpointPort,
      'durabilityLevel': ?durabilityLevel,
      'ephemeralPorts': ?ephemeralPorts == null ? null : ephemeralPorts!.toMap(),
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
      applicationPorts: map['applicationPorts'] == null ? null : ClusterNodeTypeApplicationPorts.fromMap((map['applicationPorts'] as Map).cast<String, dynamic>()),
      capacities: map['capacities'] == null ? null : (map['capacities'] as Map).cast<String, String>(),
      clientEndpointPort: map['clientEndpointPort'] as int,
      durabilityLevel: map['durabilityLevel'] == null ? null : map['durabilityLevel'] as String,
      ephemeralPorts: map['ephemeralPorts'] == null ? null : ClusterNodeTypeEphemeralPorts.fromMap((map['ephemeralPorts'] as Map).cast<String, dynamic>()),
      httpEndpointPort: map['httpEndpointPort'] as int,
      instanceCount: map['instanceCount'] as int,
      isPrimary: map['isPrimary'] as bool,
      isStateless: map['isStateless'] == null ? null : map['isStateless'] as bool,
      multipleAvailabilityZones: map['multipleAvailabilityZones'] == null ? null : map['multipleAvailabilityZones'] as bool,
      name: map['name'] as String,
      placementProperties: map['placementProperties'] == null ? null : (map['placementProperties'] as Map).cast<String, String>(),
      reverseProxyEndpointPort: map['reverseProxyEndpointPort'] == null ? null : map['reverseProxyEndpointPort'] as int,
    );
  }
}

