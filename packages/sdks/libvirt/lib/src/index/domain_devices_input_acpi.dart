// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInputAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesInputAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesInputAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesInputAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

