// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesDiskAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesDiskAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesDiskAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

