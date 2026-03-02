// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemorydevAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final pulumi.Input<double>? index;

  /// Creates a new [DomainDevicesMemorydevAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesMemorydevAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesMemorydevAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevAcpi(
      index: map['index'] == null ? null : (map['index']! as double).input(),
    );
  }
}

