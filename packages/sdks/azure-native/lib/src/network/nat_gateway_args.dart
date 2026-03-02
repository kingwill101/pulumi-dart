// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_nat_gateway_args_doc}
/// The set of arguments for NatGateway.
/// {@endtemplate}
/// {@macro pulumi_network_nat_gateway_args_doc}
class NatGatewayArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The idle timeout of the nat gateway.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the nat gateway.
  final pulumi.Input<String>? natGatewayName;
  /// An array of public ip addresses associated with the nat gateway resource.
  final pulumi.Input<List<SubResource>>? publicIpAddresses;
  /// An array of public ip prefixes associated with the nat gateway resource.
  final pulumi.Input<List<SubResource>>? publicIpPrefixes;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The nat gateway SKU.
  final pulumi.Input<NatGatewaySku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [NatGatewayArgs].
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the nat gateway.
  /// [location] Resource location.
  /// [natGatewayName] The name of the nat gateway.
  /// [publicIpAddresses] An array of public ip addresses associated with the nat gateway resource.
  /// [publicIpPrefixes] An array of public ip prefixes associated with the nat gateway resource.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The nat gateway SKU.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  NatGatewayArgs({
    this.id,
    this.idleTimeoutInMinutes,
    this.location,
    this.natGatewayName,
    this.publicIpAddresses,
    this.publicIpPrefixes,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'natGatewayName': ?natGatewayName,
      'publicIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(publicIpAddresses, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIpPrefixes': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(publicIpPrefixes, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<NatGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory NatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      natGatewayName: map['natGatewayName'] == null ? null : (map['natGatewayName'] as String).input(),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['publicIpAddresses'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicIpPrefixes: map['publicIpPrefixes'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['publicIpPrefixes'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (NatGatewaySku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

