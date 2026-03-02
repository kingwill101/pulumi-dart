// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_port_identity.dart';
import 'express_route_port_link1.dart';
import 'express_route_port_link2.dart';

/// Input properties used for looking up and filtering ExpressRoutePort resources.
class ExpressRoutePortState {
  /// Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created.
  final pulumi.Input<int>? bandwidthInGbps;
  /// The billing type of the Express Route Port. Possible values are `MeteredData` and `UnlimitedData`. Defaults to `MeteredData`.
  final pulumi.Input<String>? billingType;
  /// The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: `Dot1Q`, `QinQ`.
  final pulumi.Input<String>? encapsulation;
  /// The EtherType of the Express Route Port.
  final pulumi.Input<String>? ethertype;
  /// The resource GUID of the Express Route Port.
  final pulumi.Input<String>? guid;
  /// An `identity` block as defined below.
  final pulumi.Input<ExpressRoutePortIdentity>? identity;
  /// A list of `link` blocks as defined below.
  final pulumi.Input<ExpressRoutePortLink1>? link1;
  /// A list of `link` blocks as defined below.
  final pulumi.Input<ExpressRoutePortLink2>? link2;
  /// The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created.
  final pulumi.Input<String>? location;
  /// The maximum transmission unit of the Express Route Port.
  final pulumi.Input<String>? mtu;
  /// The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created.
  final pulumi.Input<String>? name;
  /// The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created.
  final pulumi.Input<String>? peeringLocation;
  /// The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Express Route Port.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ExpressRoutePortState].
  /// [bandwidthInGbps] Bandwidth of the Express Route Port in Gbps. Changing this forces a new Express Route Port to be created.
  /// [billingType] The billing type of the Express Route Port. Possible values are `MeteredData` and `UnlimitedData`. Defaults to `MeteredData`.
  /// [encapsulation] The encapsulation method used for the Express Route Port. Changing this forces a new Express Route Port to be created. Possible values are: `Dot1Q`, `QinQ`.
  /// [ethertype] The EtherType of the Express Route Port.
  /// [guid] The resource GUID of the Express Route Port.
  /// [identity] An `identity` block as defined below.
  /// [link1] A list of `link` blocks as defined below.
  /// [link2] A list of `link` blocks as defined below.
  /// [location] The Azure Region where the Express Route Port should exist. Changing this forces a new Express Route Port to be created.
  /// [mtu] The maximum transmission unit of the Express Route Port.
  /// [name] The name which should be used for this Express Route Port. Changing this forces a new Express Route Port to be created.
  /// [peeringLocation] The name of the peering location that this Express Route Port is physically mapped to. Changing this forces a new Express Route Port to be created.
  /// [resourceGroupName] The name of the Resource Group where the Express Route Port should exist. Changing this forces a new Express Route Port to be created.
  /// [tags] A mapping of tags which should be assigned to the Express Route Port.
  ExpressRoutePortState({
    this.bandwidthInGbps,
    this.billingType,
    this.encapsulation,
    this.ethertype,
    this.guid,
    this.identity,
    this.link1,
    this.link2,
    this.location,
    this.mtu,
    this.name,
    this.peeringLocation,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInGbps': ?bandwidthInGbps,
      'billingType': ?billingType,
      'encapsulation': ?encapsulation,
      'ethertype': ?ethertype,
      'guid': ?guid,
      'identity': ?pulumi.Input.mapOptionalInputValue<ExpressRoutePortIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'link1': ?pulumi.Input.mapOptionalInputValue<ExpressRoutePortLink1, Map<String, dynamic>>(link1, (value) => value.toMap()),
      'link2': ?pulumi.Input.mapOptionalInputValue<ExpressRoutePortLink2, Map<String, dynamic>>(link2, (value) => value.toMap()),
      'location': ?location,
      'mtu': ?mtu,
      'name': ?name,
      'peeringLocation': ?peeringLocation,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ExpressRoutePortState.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortState(
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : (map['bandwidthInGbps'] as int).input(),
      billingType: map['billingType'] == null ? null : (map['billingType'] as String).input(),
      encapsulation: map['encapsulation'] == null ? null : (map['encapsulation'] as String).input(),
      ethertype: map['ethertype'] == null ? null : (map['ethertype'] as String).input(),
      guid: map['guid'] == null ? null : (map['guid'] as String).input(),
      identity: map['identity'] == null ? null : (ExpressRoutePortIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      link1: map['link1'] == null ? null : (ExpressRoutePortLink1.fromMap((map['link1'] as Map).cast<String, dynamic>())).input(),
      link2: map['link2'] == null ? null : (ExpressRoutePortLink2.fromMap((map['link2'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peeringLocation: map['peeringLocation'] == null ? null : (map['peeringLocation'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

