// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskGeometry {
  /// Specifies the number of cylinders in the disk geometry, affecting how the disk's storage is organized.
  final double cylinders;
  /// Sets the number of headers in the disk geometry, impacting data accessibility and organization.
  final double headers;
  /// Configures the number of sectors per track in the disk's geometry, influencing data density and performance.
  final double sectors;
  /// Indicates the type of translation used for the disk geometry, affecting how it maps its virtual space to physical storage.
  final String? trans;

  /// Creates a new [DomainDevicesDiskGeometry].
  /// [cylinders] Specifies the number of cylinders in the disk geometry, affecting how the disk's storage is organized.
  /// [headers] Sets the number of headers in the disk geometry, impacting data accessibility and organization.
  /// [sectors] Configures the number of sectors per track in the disk's geometry, influencing data density and performance.
  /// [trans] Indicates the type of translation used for the disk geometry, affecting how it maps its virtual space to physical storage.
  DomainDevicesDiskGeometry({
    required this.cylinders,
    required this.headers,
    required this.sectors,
    this.trans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cylinders': cylinders,
      'headers': headers,
      'sectors': sectors,
      'trans': ?trans,
    };
  }

  factory DomainDevicesDiskGeometry.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskGeometry(
      cylinders: map['cylinders'] as double,
      headers: map['headers'] as double,
      sectors: map['sectors'] as double,
      trans: map['trans'] == null ? null : map['trans'] as String,
    );
  }
}

