// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_public_ipv4_address.dart';
import 'interface_public_ipv4_assigned_address.dart';
import 'interface_public_ipv4_shared.dart';

class InterfacePublicIpv4 {
  /// IPv4 addresses configured for this Linode interface. Each object in this list supports:
  final pulumi.Input<List<InterfacePublicIpv4Address>>? addresses;
  /// (Computed) The IPv4 addresses assigned for use in the VPC subnet, calculated from the `addresses` input. Each object in this set supports:
  final pulumi.Input<List<InterfacePublicIpv4AssignedAddress>>? assignedAddresses;
  /// (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  final pulumi.Input<List<InterfacePublicIpv4Shared>>? shareds;

  /// Creates a new [InterfacePublicIpv4].
  /// [addresses] IPv4 addresses configured for this Linode interface. Each object in this list supports:
  /// [assignedAddresses] (Computed) The IPv4 addresses assigned for use in the VPC subnet, calculated from the `addresses` input. Each object in this set supports:
  /// [shareds] (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  InterfacePublicIpv4({
    this.addresses,
    this.assignedAddresses,
    this.shareds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<InterfacePublicIpv4Address>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<InterfacePublicIpv4Address, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assignedAddresses': ?pulumi.Input.mapOptionalInputValue<List<InterfacePublicIpv4AssignedAddress>, List<Map<String, dynamic>>>(assignedAddresses, (value) => pulumi.Input.encodeList<InterfacePublicIpv4AssignedAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shareds': ?pulumi.Input.mapOptionalInputValue<List<InterfacePublicIpv4Shared>, List<Map<String, dynamic>>>(shareds, (value) => pulumi.Input.encodeList<InterfacePublicIpv4Shared, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterfacePublicIpv4.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfacePublicIpv4Address>(guardedValue, (value) => InterfacePublicIpv4Address.fromMap((value as Map).cast<String, dynamic>()))); })(),
      assignedAddresses: (() { final guardedValue = map['assignedAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfacePublicIpv4AssignedAddress>(guardedValue, (value) => InterfacePublicIpv4AssignedAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shareds: (() { final guardedValue = map['shareds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterfacePublicIpv4Shared>(guardedValue, (value) => InterfacePublicIpv4Shared.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

