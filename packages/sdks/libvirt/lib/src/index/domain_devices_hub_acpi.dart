// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHubAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final pulumi.Input<double>? index;

  /// Creates a new [DomainDevicesHubAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesHubAcpi({this.index});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'index': ?index};
  }

  factory DomainDevicesHubAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHubAcpi(
      index: (() {
        final guardedValue = map['index'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
