// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_sku_response.dart';
import 'sub_resource_response.dart';

/// Nat Gateway resource.
class NatGatewayResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The idle timeout of the nat gateway.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The provisioning state of the NAT gateway resource.
  final pulumi.Input<String> provisioningState;
  /// An array of public ip addresses associated with the nat gateway resource.
  final pulumi.Input<List<SubResourceResponse>>? publicIpAddresses;
  /// An array of public ip addresses V6 associated with the nat gateway resource.
  final pulumi.Input<List<SubResourceResponse>>? publicIpAddressesV6;
  /// An array of public ip prefixes associated with the nat gateway resource.
  final pulumi.Input<List<SubResourceResponse>>? publicIpPrefixes;
  /// An array of public ip prefixes V6 associated with the nat gateway resource.
  final pulumi.Input<List<SubResourceResponse>>? publicIpPrefixesV6;
  /// The resource GUID property of the NAT gateway resource.
  final pulumi.Input<String> resourceGuid;
  /// Reference to an existing service gateway.
  final pulumi.Input<SubResourceResponse>? serviceGateway;
  /// The nat gateway SKU.
  final pulumi.Input<NatGatewaySkuResponse>? sku;
  /// A reference to the source virtual network using this nat gateway resource.
  final pulumi.Input<SubResourceResponse>? sourceVirtualNetwork;
  /// An array of references to the subnets using this nat gateway resource.
  final pulumi.Input<List<SubResourceResponse>> subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;
  /// A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [NatGatewayResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the nat gateway.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the NAT gateway resource.
  /// [publicIpAddresses] An array of public ip addresses associated with the nat gateway resource.
  /// [publicIpAddressesV6] An array of public ip addresses V6 associated with the nat gateway resource.
  /// [publicIpPrefixes] An array of public ip prefixes associated with the nat gateway resource.
  /// [publicIpPrefixesV6] An array of public ip prefixes V6 associated with the nat gateway resource.
  /// [resourceGuid] The resource GUID property of the NAT gateway resource.
  /// [serviceGateway] Reference to an existing service gateway.
  /// [sku] The nat gateway SKU.
  /// [sourceVirtualNetwork] A reference to the source virtual network using this nat gateway resource.
  /// [subnets] An array of references to the subnets using this nat gateway resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  NatGatewayResponse({
    required this.etag,
    this.id,
    this.idleTimeoutInMinutes,
    this.location,
    required this.name,
    required this.provisioningState,
    this.publicIpAddresses,
    this.publicIpAddressesV6,
    this.publicIpPrefixes,
    this.publicIpPrefixesV6,
    required this.resourceGuid,
    this.serviceGateway,
    this.sku,
    this.sourceVirtualNetwork,
    required this.subnets,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'publicIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(publicIpAddresses, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIpAddressesV6': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(publicIpAddressesV6, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIpPrefixes': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(publicIpPrefixes, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIpPrefixesV6': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(publicIpPrefixesV6, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGuid': resourceGuid,
      'serviceGateway': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(serviceGateway, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<NatGatewaySkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sourceVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(sourceVirtualNetwork, (value) => value.toMap()),
      'subnets': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory NatGatewayResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes']! as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['publicIpAddresses']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicIpAddressesV6: map['publicIpAddressesV6'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['publicIpAddressesV6']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicIpPrefixes: map['publicIpPrefixes'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['publicIpPrefixes']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicIpPrefixesV6: map['publicIpPrefixesV6'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['publicIpPrefixesV6']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
      serviceGateway: map['serviceGateway'] == null ? null : (SubResourceResponse.fromMap((map['serviceGateway']! as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (NatGatewaySkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      sourceVirtualNetwork: map['sourceVirtualNetwork'] == null ? null : (SubResourceResponse.fromMap((map['sourceVirtualNetwork']! as Map).cast<String, dynamic>())).input(),
      subnets: (pulumi.Input.decodeList<SubResourceResponse>(map['subnets'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

