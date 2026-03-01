// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesHostdevAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesHostdevAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesHostdevAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

