// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceAdapterParentAddrAddress {
  /// Specifies the bus identifier for the parent address.
  final pulumi.Input<double>? bus;
  /// Defines the domain associated with the parent address of the adapter.
  final pulumi.Input<double>? domain;
  /// Configures the function field for the address of the adapter's parent device.
  final pulumi.Input<double>? function;
  /// Indicates the slot number for the adapter's parent address.
  final pulumi.Input<double>? slot;

  /// Creates a new [PoolSourceAdapterParentAddrAddress].
  /// [bus] Specifies the bus identifier for the parent address.
  /// [domain] Defines the domain associated with the parent address of the adapter.
  /// [function] Configures the function field for the address of the adapter's parent device.
  /// [slot] Indicates the slot number for the adapter's parent address.
  const PoolSourceAdapterParentAddrAddress({
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

  factory PoolSourceAdapterParentAddrAddress.fromMap(Map<String, dynamic> map) {
    return PoolSourceAdapterParentAddrAddress(
      bus: (() { final guardedValue = map['bus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      function: (() { final guardedValue = map['function']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      slot: (() { final guardedValue = map['slot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

