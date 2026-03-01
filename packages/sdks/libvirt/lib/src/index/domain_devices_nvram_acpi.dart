// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesNvramAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesNvramAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesNvramAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesNvramAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesNvramAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

