// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_sku_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getNatGateway.
class GetNatGatewayResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The idle timeout of the nat gateway.
  final int? idleTimeoutInMinutes;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the NAT gateway resource.
  final String provisioningState;
  /// An array of public ip addresses associated with the nat gateway resource.
  final List<SubResourceResponse>? publicIpAddresses;
  /// An array of public ip prefixes associated with the nat gateway resource.
  final List<SubResourceResponse>? publicIpPrefixes;
  /// The resource GUID property of the NAT gateway resource.
  final String resourceGuid;
  /// The nat gateway SKU.
  final NatGatewaySkuResponse? sku;
  /// An array of references to the subnets using this nat gateway resource.
  final List<SubResourceResponse> subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  final List<String>? zones;

  /// Creates a new [GetNatGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  GetNatGatewayResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'publicIpAddresses': ?publicIpAddresses == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(publicIpAddresses!, (value) => value.toMap()),
      'publicIpPrefixes': ?publicIpPrefixes == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(publicIpPrefixes!, (value) => value.toMap()),
      'resourceGuid': resourceGuid,
      'sku': ?sku == null ? null : sku!.toMap(),
      'subnets': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(subnets, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIpAddresses: map['publicIpAddresses'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['publicIpAddresses'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicIpPrefixes: map['publicIpPrefixes'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['publicIpPrefixes'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGuid: map['resourceGuid'] as String,
      sku: map['sku'] == null ? null : NatGatewaySkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      subnets: pulumi.Input.decodeList<SubResourceResponse>(map['subnets'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

