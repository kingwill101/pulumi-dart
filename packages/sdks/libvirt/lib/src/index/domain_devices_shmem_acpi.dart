// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesShmemAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final pulumi.Input<double>? index;

  /// Creates a new [DomainDevicesShmemAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesShmemAcpi({this.index});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'index': ?index};
  }

  factory DomainDevicesShmemAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemAcpi(
      index: (() {
        final guardedValue = map['index'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
