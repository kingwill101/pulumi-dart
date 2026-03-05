// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkForwardAddressPci {
  /// Specifies the bus number for the PCI forwarding address.
  final pulumi.Input<double>? bus;
  /// Sets the domain ID for the PCI forwarding address.
  final pulumi.Input<double>? domain;
  /// Defines the function number for the PCI forwarding address.
  final pulumi.Input<double>? function;
  /// Specifies the slot number for the PCI forwarding address.
  final pulumi.Input<double>? slot;

  /// Creates a new [NetworkForwardAddressPci].
  /// [bus] Specifies the bus number for the PCI forwarding address.
  /// [domain] Sets the domain ID for the PCI forwarding address.
  /// [function] Defines the function number for the PCI forwarding address.
  /// [slot] Specifies the slot number for the PCI forwarding address.
  NetworkForwardAddressPci({
    this.bus,
    this.domain,
    this.function,
    this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'domain': ?domain,
      'function': ?function,
      'slot': ?slot,
    };
  }

  factory NetworkForwardAddressPci.fromMap(Map<String, dynamic> map) {
    return NetworkForwardAddressPci(
      bus: (() { final guardedValue = map['bus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      function: (() { final guardedValue = map['function']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      slot: (() { final guardedValue = map['slot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

