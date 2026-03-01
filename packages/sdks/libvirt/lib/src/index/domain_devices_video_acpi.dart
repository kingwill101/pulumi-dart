// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesVideoAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesVideoAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesVideoAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesVideoAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideoAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

