// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_dhcp_address_range.dart';

/// Result data returned by getSubnet.
class GetSubnetResult {
  final String? createTime;
  final List<GetSubnetDhcpAddressRange>? dhcpAddressRanges;
  final String? gatewayId;
  final String? gatewayIp;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipCidrRange;
  final String? name;
  final String? parent;
  final bool? standardConfig;
  final String? state;
  final String? type;
  final String? uid;
  final String? updateTime;
  final int? vlanId;

  /// Creates a new [GetSubnetResult].
  /// [createTime] Optional.
  /// [dhcpAddressRanges] Optional.
  /// [gatewayId] Optional.
  /// [gatewayIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipCidrRange] Optional.
  /// [name] Optional.
  /// [parent] Optional.
  /// [standardConfig] Optional.
  /// [state] Optional.
  /// [type] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [vlanId] Optional.
  const GetSubnetResult({
    this.createTime,
    this.dhcpAddressRanges,
    this.gatewayId,
    this.gatewayIp,
    this.id,
    this.ipCidrRange,
    this.name,
    this.parent,
    this.standardConfig,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dhcpAddressRanges': ?(() { final guardedValue = dhcpAddressRanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubnetDhcpAddressRange, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayId': ?gatewayId,
      'gatewayIp': ?gatewayIp,
      'id': ?id,
      'ipCidrRange': ?ipCidrRange,
      'name': ?name,
      'parent': ?parent,
      'standardConfig': ?standardConfig,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vlanId': ?vlanId,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dhcpAddressRanges: (() { final guardedValue = map['dhcpAddressRanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubnetDhcpAddressRange>(guardedValue, (value) => GetSubnetDhcpAddressRange.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayIp: (() { final guardedValue = map['gatewayIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standardConfig: (() { final guardedValue = map['standardConfig']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
