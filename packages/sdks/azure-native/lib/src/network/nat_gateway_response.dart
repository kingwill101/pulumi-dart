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
  /// An array of public ip prefixes associated with the nat gateway resource.
  final pulumi.Input<List<SubResourceResponse>>? publicIpPrefixes;
  /// The resource GUID property of the NAT gateway resource.
  final pulumi.Input<String> resourceGuid;
  /// The nat gateway SKU.
  final pulumi.Input<NatGatewaySkuResponse>? sku;
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
  /// [publicIpPrefixes] An array of public ip prefixes associated with the nat gateway resource.
  /// [resourceGuid] The resource GUID property of the NAT gateway resource.
  /// [sku] The nat gateway SKU.
  /// [subnets] An array of references to the subnets using this nat gateway resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  const NatGatewayResponse({
    required this.etag,
    this.id,
    this.idleTimeoutInMinutes,
    this.location,
    required this.name,
    required this.provisioningState,
    this.publicIpAddresses,
    this.publicIpPrefixes,
    required this.resourceGuid,
    this.sku,
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
      'publicIpPrefixes': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(publicIpPrefixes, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGuid': resourceGuid,
      'sku': ?pulumi.Input.mapOptionalInputValue<NatGatewaySkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subnets': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory NatGatewayResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicIpPrefixes: (() { final guardedValue = map['publicIpPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnets: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['subnets']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
