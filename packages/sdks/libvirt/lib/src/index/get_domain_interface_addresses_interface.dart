// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_interface_addresses_interface_addr.dart';

class GetDomainInterfaceAddressesInterface {
  /// List of IP addresses assigned to this interface.
  final pulumi.Input<List<GetDomainInterfaceAddressesInterfaceAddr>> addrs;
  /// MAC address of the interface.
  final pulumi.Input<String> hwaddr;
  /// Interface name on the host (e.g., `vnet0`).
  final pulumi.Input<String> name;

  /// Creates a new [GetDomainInterfaceAddressesInterface].
  /// [addrs] List of IP addresses assigned to this interface.
  /// [hwaddr] MAC address of the interface.
  /// [name] Interface name on the host (e.g., `vnet0`).
  GetDomainInterfaceAddressesInterface({
    required this.addrs,
    required this.hwaddr,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addrs': pulumi.Input.mapInputValue<List<GetDomainInterfaceAddressesInterfaceAddr>, List<Map<String, dynamic>>>(addrs, (value) => pulumi.Input.encodeList<GetDomainInterfaceAddressesInterfaceAddr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hwaddr': hwaddr,
      'name': name,
    };
  }

  factory GetDomainInterfaceAddressesInterface.fromMap(Map<String, dynamic> map) {
    return GetDomainInterfaceAddressesInterface(
      addrs: (pulumi.Input.decodeList<GetDomainInterfaceAddressesInterfaceAddr>(map['addrs'], (value) => GetDomainInterfaceAddressesInterfaceAddr.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hwaddr: (map['hwaddr'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

