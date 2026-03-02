// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_service_discovery_node.dart';

/// Input properties used for looking up and filtering EventServiceDiscovery resources.
class EventServiceDiscoveryState {
  /// Map of node which will be added to pool which will be having node name(id),node address(ip) and node port(port)
  ///
  /// For more information, please refer below document
  /// https://clouddocs.f5.com/products/extensions/f5-appsvcs-extension/latest/declarations/discovery.html?highlight=service%20discovery#event-driven-service-discovery
  ///
  /// Below example shows how to use event-driven service discovery, introduced in AS3 3.9.0.
  ///
  /// With event-driven service discovery, you POST a declaration with the addressDiscovery property set to event. This creates a new endpoint which you can use to add nodes that does not require an AS3 declaration, so it can be more efficient than using PATCH or POST to add nodes.
  ///
  /// When you use the event value for addressDiscovery, the system creates the new endpoint with the following syntax: https://<host>/mgmt/shared/service-discovery/task/~<tenant name>~<application name>~<pool name>/nodes.
  ///
  /// For example, in the following declaration, assuming 192.0.2.14 is our BIG-IP, the endpoint that is created is: https://192.0.2.14/mgmt/shared/service-discovery/task/~Sample_event_sd~My_app~My_pool/nodes
  ///
  /// Once the endpoint is created( taskid ), you can use it to add nodes to the BIG-IP pool
  /// First we show the initial declaration to POST to the BIG-IP system.
  ///
  /// {
  /// "class": "ADC",
  /// "schemaVersion": "3.9.0",
  /// "id": "Pool",
  /// "Sample_event_sd": {
  /// "class": "Tenant",
  /// "My_app": {
  /// "class": "Application",
  /// "My_pool": {
  /// "class": "Pool",
  /// "members": [
  /// {
  /// "servicePort": 8080,
  /// "addressDiscovery": "static",
  /// "serverAddresses": [
  /// "192.0.2.2"
  /// ]
  /// },
  /// {
  /// "servicePort": 8080,
  /// "addressDiscovery": "event"
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  ///
  ///
  /// Once the declaration has been sent to the BIG-IP, we can use taskid/id ( ~Sample_event_sd~My_app~My_pool" ) and node list for the resource to dynamically update the node list.
  final pulumi.Input<List<EventServiceDiscoveryNode>>? nodes;
  /// servicediscovery endpoint ( Below example shows how to create endpoing using AS3 )
  final pulumi.Input<String>? taskid;

  /// Creates a new [EventServiceDiscoveryState].
  /// [nodes] Map of node which will be added to pool which will be having node name(id),node address(ip) and node port(port)
  /// [taskid] servicediscovery endpoint ( Below example shows how to create endpoing using AS3 )
  EventServiceDiscoveryState({
    this.nodes,
    this.taskid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<EventServiceDiscoveryNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<EventServiceDiscoveryNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskid': ?taskid,
    };
  }

  factory EventServiceDiscoveryState.fromMap(Map<String, dynamic> map) {
    return EventServiceDiscoveryState(
      nodes: map['nodes'] == null ? null : (pulumi.Input.decodeList<EventServiceDiscoveryNode>(map['nodes'], (value) => EventServiceDiscoveryNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      taskid: map['taskid'] == null ? null : (map['taskid'] as String).input(),
    );
  }
}

