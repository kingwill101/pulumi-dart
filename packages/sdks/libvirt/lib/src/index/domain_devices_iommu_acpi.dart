// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesIommuAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesIommuAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesIommuAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesIommuAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommuAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

