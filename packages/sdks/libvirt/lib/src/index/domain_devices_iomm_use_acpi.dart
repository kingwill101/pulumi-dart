// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesIommUseAcpi {
  /// Sets the ACPI ERST record index used by this pstore device; the value is a user-provided non-negative integer.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#pstore&gt;
  final pulumi.Input<double?>? index;
  final pulumi.Input<String?>? nodeset;

  /// Creates a new [DomainDevicesIommUseAcpi].
  /// [index] Sets the ACPI ERST record index used by this pstore device; the value is a user-provided non-negative integer.
  /// [nodeset] Optional.
  const DomainDevicesIommUseAcpi({
    this.index,
    this.nodeset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
      'nodeset': ?nodeset,
    };
  }

  factory DomainDevicesIommUseAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommUseAcpi(
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      nodeset: (() { final guardedValue = map['nodeset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
