// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_link.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_network_express_route_port_args_doc}
/// The set of arguments for ExpressRoutePort.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_port_args_doc}
class ExpressRoutePortArgs {
  /// Bandwidth of procured ports in Gbps.
  final pulumi.Input<int>? bandwidthInGbps;
  /// The billing type of the ExpressRoutePort resource.
  final pulumi.Input<String>? billingType;
  /// Encapsulation method on physical ports.
  final pulumi.Input<String>? encapsulation;
  /// The name of the ExpressRoutePort resource.
  final pulumi.Input<String>? expressRoutePortName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The identity of ExpressRoutePort, if configured.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The set of physical links of the ExpressRoutePort resource.
  final pulumi.Input<List<ExpressRouteLink>>? links;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the peering location that the ExpressRoutePort is mapped to physically.
  final pulumi.Input<String>? peeringLocation;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ExpressRoutePortArgs].
  /// [bandwidthInGbps] Bandwidth of procured ports in Gbps.
  /// [billingType] The billing type of the ExpressRoutePort resource.
  /// [encapsulation] Encapsulation method on physical ports.
  /// [expressRoutePortName] The name of the ExpressRoutePort resource.
  /// [id] Resource ID.
  /// [identity] The identity of ExpressRoutePort, if configured.
  /// [links] The set of physical links of the ExpressRoutePort resource.
  /// [location] Resource location.
  /// [peeringLocation] The name of the peering location that the ExpressRoutePort is mapped to physically.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  ExpressRoutePortArgs({
    pulumi.Output<int>? bandwidthInGbps,
    pulumi.Output<String>? billingType,
    pulumi.Output<String>? encapsulation,
    pulumi.Output<String>? expressRoutePortName,
    pulumi.Output<String>? id,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<List<ExpressRouteLink>>? links,
    pulumi.Output<String>? location,
    pulumi.Output<String>? peeringLocation,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      bandwidthInGbps = pulumi.Input.asOptionalInput<int>(bandwidthInGbps),
      billingType = pulumi.Input.asOptionalInput<String>(billingType),
      encapsulation = pulumi.Input.asOptionalInput<String>(encapsulation),
      expressRoutePortName = pulumi.Input.asOptionalInput<String>(expressRoutePortName),
      id = pulumi.Input.asOptionalInput<String>(id),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      links = pulumi.Input.asOptionalInput<List<ExpressRouteLink>>(links),
      location = pulumi.Input.asOptionalInput<String>(location),
      peeringLocation = pulumi.Input.asOptionalInput<String>(peeringLocation),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInGbps': ?bandwidthInGbps,
      'billingType': ?billingType,
      'encapsulation': ?encapsulation,
      'expressRoutePortName': ?expressRoutePortName,
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'links': ?pulumi.Input.mapOptionalInputValue<List<ExpressRouteLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<ExpressRouteLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'peeringLocation': ?peeringLocation,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ExpressRoutePortArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortArgs(
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : pulumi.Output.create<int>(map['bandwidthInGbps'] as int),
      billingType: map['billingType'] == null ? null : pulumi.Output.create<String>(map['billingType'] as String),
      encapsulation: map['encapsulation'] == null ? null : pulumi.Output.create<String>(map['encapsulation'] as String),
      expressRoutePortName: map['expressRoutePortName'] == null ? null : pulumi.Output.create<String>(map['expressRoutePortName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      links: map['links'] == null ? null : pulumi.Output.create<List<ExpressRouteLink>>(pulumi.Input.decodeList<ExpressRouteLink>(map['links'], (value) => ExpressRouteLink.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      peeringLocation: map['peeringLocation'] == null ? null : pulumi.Output.create<String>(map['peeringLocation'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

