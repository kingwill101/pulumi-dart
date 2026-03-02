// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemorydevTargetAddress {
  /// Configures the base address for the target of the memory device, specifying where it starts in memory.
  final pulumi.Input<double>? base;

  /// Creates a new [DomainDevicesMemorydevTargetAddress].
  /// [base] Configures the base address for the target of the memory device, specifying where it starts in memory.
  DomainDevicesMemorydevTargetAddress({
    this.base,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': ?base,
    };
  }

  factory DomainDevicesMemorydevTargetAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevTargetAddress(
      base: map['base'] == null ? null : (map['base']! as double).input(),
    );
  }
}

