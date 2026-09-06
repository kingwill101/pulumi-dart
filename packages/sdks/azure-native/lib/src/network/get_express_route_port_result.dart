// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_link_response.dart';
import 'managed_service_identity_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getExpressRoutePort.
class GetExpressRoutePortResult {
  /// Date of the physical port allocation to be used in Letter of Authorization.
  final String? allocationDate;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Bandwidth of procured ports in Gbps.
  final int? bandwidthInGbps;
  /// The billing type of the ExpressRoutePort resource.
  final String? billingType;
  /// Reference the ExpressRoute circuit(s) that are provisioned on this ExpressRoutePort resource.
  final List<SubResourceResponse>? circuits;
  /// Encapsulation method on physical ports.
  final String? encapsulation;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Ether type of the physical port.
  final String? etherType;
  /// Resource ID.
  final String? id;
  /// The identity of ExpressRoutePort, if configured.
  final ManagedServiceIdentityResponse? identity;
  /// The set of physical links of the ExpressRoutePort resource.
  final List<ExpressRouteLinkResponse>? links;
  /// Resource location.
  final String? location;
  /// Maximum transmission unit of the physical port pair(s).
  final String? mtu;
  /// Resource name.
  final String? name;
  /// The name of the peering location that the ExpressRoutePort is mapped to physically.
  final String? peeringLocation;
  /// Aggregate Gbps of associated circuit bandwidths.
  final double? provisionedBandwidthInGbps;
  /// The provisioning state of the express route port resource.
  final String? provisioningState;
  /// The resource GUID property of the express route port resource.
  final String? resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetExpressRoutePortResult].
  /// [allocationDate] Date of the physical port allocation to be used in Letter of Authorization.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bandwidthInGbps] Bandwidth of procured ports in Gbps.
  /// [billingType] The billing type of the ExpressRoutePort resource.
  /// [circuits] Reference the ExpressRoute circuit(s) that are provisioned on this ExpressRoutePort resource.
  /// [encapsulation] Encapsulation method on physical ports.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [etherType] Ether type of the physical port.
  /// [id] Resource ID.
  /// [identity] The identity of ExpressRoutePort, if configured.
  /// [links] The set of physical links of the ExpressRoutePort resource.
  /// [location] Resource location.
  /// [mtu] Maximum transmission unit of the physical port pair(s).
  /// [name] Resource name.
  /// [peeringLocation] The name of the peering location that the ExpressRoutePort is mapped to physically.
  /// [provisionedBandwidthInGbps] Aggregate Gbps of associated circuit bandwidths.
  /// [provisioningState] The provisioning state of the express route port resource.
  /// [resourceGuid] The resource GUID property of the express route port resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetExpressRoutePortResult({
    this.allocationDate,
    this.azureApiVersion,
    this.bandwidthInGbps,
    this.billingType,
    this.circuits,
    this.encapsulation,
    this.etag,
    this.etherType,
    this.id,
    this.identity,
    this.links,
    this.location,
    this.mtu,
    this.name,
    this.peeringLocation,
    this.provisionedBandwidthInGbps,
    this.provisioningState,
    this.resourceGuid,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationDate': ?allocationDate,
      'azureApiVersion': ?azureApiVersion,
      'bandwidthInGbps': ?bandwidthInGbps,
      'billingType': ?billingType,
      'circuits': ?(() { final guardedValue = circuits; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encapsulation': ?encapsulation,
      'etag': ?etag,
      'etherType': ?etherType,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'links': ?(() { final guardedValue = links; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressRouteLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'mtu': ?mtu,
      'name': ?name,
      'peeringLocation': ?peeringLocation,
      'provisionedBandwidthInGbps': ?provisionedBandwidthInGbps,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetExpressRoutePortResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRoutePortResult(
      allocationDate: (() { final guardedValue = map['allocationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bandwidthInGbps: (() { final guardedValue = map['bandwidthInGbps']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      billingType: (() { final guardedValue = map['billingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      circuits: (() { final guardedValue = map['circuits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      encapsulation: (() { final guardedValue = map['encapsulation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etherType: (() { final guardedValue = map['etherType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteLinkResponse>(guardedValue, (value) => ExpressRouteLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringLocation: (() { final guardedValue = map['peeringLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisionedBandwidthInGbps: (() { final guardedValue = map['provisionedBandwidthInGbps']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
