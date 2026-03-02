// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize {
  /// Specifies the unit for the maximum size of the metadata cache in the data store format.
  final pulumi.Input<String>? unit;
  /// Sets the value for the maximum size of the metadata cache in the data store format configuration.
  final pulumi.Input<double> value;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize].
  /// [unit] Specifies the unit for the maximum size of the metadata cache in the data store format.
  /// [value] Sets the value for the maximum size of the metadata cache in the data store format configuration.
  DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize({
    this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': ?unit,
      'value': value,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceDataStoreFormatMetadataCacheMaxSize(
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
      value: (map['value'] as double).input(),
    );
  }
}

