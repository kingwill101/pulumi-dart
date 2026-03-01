// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesVsockAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesVsockAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesVsockAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesVsockAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVsockAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

