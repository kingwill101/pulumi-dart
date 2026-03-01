// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesConsoleAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesConsoleAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesConsoleAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesConsoleAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

