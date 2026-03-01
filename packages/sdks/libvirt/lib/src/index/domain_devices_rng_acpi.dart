// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRngAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesRngAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesRngAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesRngAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

