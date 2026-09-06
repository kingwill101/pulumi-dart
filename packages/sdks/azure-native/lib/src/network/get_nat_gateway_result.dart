// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_sku_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getNatGateway.
class GetNatGatewayResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The idle timeout of the nat gateway.
  final int? idleTimeoutInMinutes;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the NAT gateway resource.
  final String? provisioningState;
  /// An array of public ip addresses associated with the nat gateway resource.
  final List<SubResourceResponse>? publicIpAddresses;
  /// An array of public ip prefixes associated with the nat gateway resource.
  final List<SubResourceResponse>? publicIpPrefixes;
  /// The resource GUID property of the NAT gateway resource.
  final String? resourceGuid;
  /// The nat gateway SKU.
  final NatGatewaySkuResponse? sku;
  /// An array of references to the subnets using this nat gateway resource.
  final List<SubResourceResponse>? subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
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
  const GetNatGatewayResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.idleTimeoutInMinutes,
    this.location,
    this.name,
    this.provisioningState,
    this.publicIpAddresses,
    this.publicIpPrefixes,
    this.resourceGuid,
    this.sku,
    this.subnets,
    this.tags,
    this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publicIpAddresses': ?(() { final guardedValue = publicIpAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'publicIpPrefixes': ?(() { final guardedValue = publicIpPrefixes; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGuid': ?resourceGuid,
      'sku': ?sku?.toMap(),
      'subnets': ?(() { final guardedValue = subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': ?type,
      'zones': ?zones,
    };
  }

  factory GetNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      publicIpPrefixes: (() { final guardedValue = map['publicIpPrefixes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return NatGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
