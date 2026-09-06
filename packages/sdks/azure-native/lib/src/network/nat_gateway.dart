// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_sku.dart';
import 'sub_resource.dart';

/// Nat Gateway resource.
class NatGateway {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The idle timeout of the nat gateway.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// An array of public ip addresses associated with the nat gateway resource.
  final pulumi.Input<List<SubResource>?>? publicIpAddresses;
  /// An array of public ip prefixes associated with the nat gateway resource.
  final pulumi.Input<List<SubResource>?>? publicIpPrefixes;
  /// The nat gateway SKU.
  final pulumi.Input<NatGatewaySku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [NatGateway].
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the nat gateway.
  /// [location] Resource location.
  /// [publicIpAddresses] An array of public ip addresses associated with the nat gateway resource.
  /// [publicIpPrefixes] An array of public ip prefixes associated with the nat gateway resource.
  /// [sku] The nat gateway SKU.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  const NatGateway({
    this.id,
    this.idleTimeoutInMinutes,
    this.location,
    this.publicIpAddresses,
    this.publicIpPrefixes,
    this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'publicIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(publicIpAddresses, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIpPrefixes': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(publicIpPrefixes, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?pulumi.Input.mapOptionalInputValue<NatGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory NatGateway.fromMap(Map<String, dynamic> map) {
    return NatGateway(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicIpPrefixes: (() { final guardedValue = map['publicIpPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewaySku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
