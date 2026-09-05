// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesVideoAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final pulumi.Input<double?>? index;
  final pulumi.Input<String?>? nodeset;

  /// Creates a new [DomainDevicesVideoAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  /// [nodeset] Optional.
  const DomainDevicesVideoAcpi({
    this.index,
    this.nodeset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
      'nodeset': ?nodeset,
    };
  }

  factory DomainDevicesVideoAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideoAcpi(
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      nodeset: (() { final guardedValue = map['nodeset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
