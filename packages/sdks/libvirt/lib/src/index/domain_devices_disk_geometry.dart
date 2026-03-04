// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskGeometry {
  /// Specifies the number of cylinders in the disk geometry, affecting how the disk's storage is organized.
  final pulumi.Input<double> cylinders;

  /// Sets the number of headers in the disk geometry, impacting data accessibility and organization.
  final pulumi.Input<double> headers;

  /// Configures the number of sectors per track in the disk's geometry, influencing data density and performance.
  final pulumi.Input<double> sectors;

  /// Indicates the type of translation used for the disk geometry, affecting how it maps its virtual space to physical storage.
  final pulumi.Input<String>? trans;

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
      cylinders: pulumi.Input.fromValue(map['cylinders'] as double),
      headers: pulumi.Input.fromValue(map['headers'] as double),
      sectors: pulumi.Input.fromValue(map['sectors'] as double),
      trans: (() {
        final guardedValue = map['trans'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
