// ignore_for_file: unused_element, unnecessary_cast


class PoolSourceAdapterParentAddrAddress {
  /// Specifies the bus identifier for the parent address.
  final double? bus;
  /// Defines the domain associated with the parent address of the adapter.
  final double? domain;
  /// Configures the function field for the address of the adapter's parent device.
  final double? function;
  /// Indicates the slot number for the adapter's parent address.
  final double? slot;

  /// Creates a new [PoolSourceAdapterParentAddrAddress].
  /// [bus] Specifies the bus identifier for the parent address.
  /// [domain] Defines the domain associated with the parent address of the adapter.
  /// [function] Configures the function field for the address of the adapter's parent device.
  /// [slot] Indicates the slot number for the adapter's parent address.
  PoolSourceAdapterParentAddrAddress({
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
      bus: map['bus'] == null ? null : map['bus'] as double,
      domain: map['domain'] == null ? null : map['domain'] as double,
      function: map['function'] == null ? null : map['function'] as double,
      slot: map['slot'] == null ? null : map['slot'] as double,
    );
  }
}

