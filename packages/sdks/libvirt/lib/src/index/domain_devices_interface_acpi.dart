// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesInterfaceAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesInterfaceAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesInterfaceAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

