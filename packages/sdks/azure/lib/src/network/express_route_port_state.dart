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
    pulumi.Output<int>? bandwidthInGbps,
    pulumi.Output<String>? billingType,
    pulumi.Output<String>? encapsulation,
    pulumi.Output<String>? ethertype,
    pulumi.Output<String>? guid,
    pulumi.Output<ExpressRoutePortIdentity>? identity,
    pulumi.Output<ExpressRoutePortLink1>? link1,
    pulumi.Output<ExpressRoutePortLink2>? link2,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peeringLocation,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      bandwidthInGbps = pulumi.Input.asOptionalInput<int>(bandwidthInGbps),
      billingType = pulumi.Input.asOptionalInput<String>(billingType),
      encapsulation = pulumi.Input.asOptionalInput<String>(encapsulation),
      ethertype = pulumi.Input.asOptionalInput<String>(ethertype),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      identity = pulumi.Input.asOptionalInput<ExpressRoutePortIdentity>(identity),
      link1 = pulumi.Input.asOptionalInput<ExpressRoutePortLink1>(link1),
      link2 = pulumi.Input.asOptionalInput<ExpressRoutePortLink2>(link2),
      location = pulumi.Input.asOptionalInput<String>(location),
      mtu = pulumi.Input.asOptionalInput<String>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      peeringLocation = pulumi.Input.asOptionalInput<String>(peeringLocation),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : pulumi.Output.create<int>(map['bandwidthInGbps'] as int),
      billingType: map['billingType'] == null ? null : pulumi.Output.create<String>(map['billingType'] as String),
      encapsulation: map['encapsulation'] == null ? null : pulumi.Output.create<String>(map['encapsulation'] as String),
      ethertype: map['ethertype'] == null ? null : pulumi.Output.create<String>(map['ethertype'] as String),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ExpressRoutePortIdentity>(ExpressRoutePortIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      link1: map['link1'] == null ? null : pulumi.Output.create<ExpressRoutePortLink1>(ExpressRoutePortLink1.fromMap((map['link1'] as Map).cast<String, dynamic>())),
      link2: map['link2'] == null ? null : pulumi.Output.create<ExpressRoutePortLink2>(ExpressRoutePortLink2.fromMap((map['link2'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<String>(map['mtu'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peeringLocation: map['peeringLocation'] == null ? null : pulumi.Output.create<String>(map['peeringLocation'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

