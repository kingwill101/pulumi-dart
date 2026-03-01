// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesFilesystemAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesFilesystemAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesFilesystemAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

