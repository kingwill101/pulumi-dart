// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_forward_address_pci.dart';

class NetworkForwardAddress {
  /// Configures forwarding for PCI addresses.
  final pulumi.Input<NetworkForwardAddressPci>? pci;

  /// Creates a new [NetworkForwardAddress].
  /// [pci] Configures forwarding for PCI addresses.
  NetworkForwardAddress({
    this.pci,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pci': ?pulumi.Input.mapOptionalInputValue<NetworkForwardAddressPci, Map<String, dynamic>>(pci, (value) => value.toMap()),
    };
  }

  factory NetworkForwardAddress.fromMap(Map<String, dynamic> map) {
    return NetworkForwardAddress(
      pci: map['pci'] == null ? null : (NetworkForwardAddressPci.fromMap((map['pci'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

