// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_type_application_ports.dart';
import 'cluster_node_type_ephemeral_ports.dart';

class ClusterNodeType {
  /// A `applicationPorts` block as defined below.
  final pulumi.Input<ClusterNodeTypeApplicationPorts>? applicationPorts;
  /// The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  final pulumi.Input<Map<String, String>>? capacities;
  /// The Port used for the Client Endpoint for this Node Type.
  final pulumi.Input<int> clientEndpointPort;
  /// The Durability Level for this Node Type. Possible values include `Bronze`, `Gold` and `Silver`. Defaults to `Bronze`.
  final pulumi.Input<String>? durabilityLevel;
  /// A `ephemeralPorts` block as defined below.
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
  /// [applicationPorts] A `applicationPorts` block as defined below.
  /// [capacities] The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  /// [clientEndpointPort] The Port used for the Client Endpoint for this Node Type.
  /// [durabilityLevel] The Durability Level for this Node Type. Possible values include `Bronze`, `Gold` and `Silver`. Defaults to `Bronze`.
  /// [ephemeralPorts] A `ephemeralPorts` block as defined below.
  /// [httpEndpointPort] The Port used for the HTTP Endpoint for this Node Type.
  /// [instanceCount] The number of nodes for this Node Type.
  /// [isPrimary] Is this the Primary Node Type?
  /// [isStateless] Should this node type run only stateless services?
  /// [multipleAvailabilityZones] Does this node type span availability zones?
  /// [name] The name of the Node Type.
  /// [placementProperties] The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  /// [reverseProxyEndpointPort] The Port used for the Reverse Proxy Endpoint for this Node Type. Changing this will upgrade the cluster.
  const ClusterNodeType({
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
      applicationPorts: (() { final guardedValue = map['applicationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeTypeApplicationPorts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacities: (() { final guardedValue = map['capacities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      clientEndpointPort: pulumi.Input.fromValue(map['clientEndpointPort'] as int),
      durabilityLevel: (() { final guardedValue = map['durabilityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ephemeralPorts: (() { final guardedValue = map['ephemeralPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeTypeEphemeralPorts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpEndpointPort: pulumi.Input.fromValue(map['httpEndpointPort'] as int),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      isPrimary: pulumi.Input.fromValue(map['isPrimary'] as bool),
      isStateless: (() { final guardedValue = map['isStateless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      multipleAvailabilityZones: (() { final guardedValue = map['multipleAvailabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      placementProperties: (() { final guardedValue = map['placementProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reverseProxyEndpointPort: (() { final guardedValue = map['reverseProxyEndpointPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
