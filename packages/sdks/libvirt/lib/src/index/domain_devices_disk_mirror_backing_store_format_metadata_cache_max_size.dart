// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize {
  /// Specifies the unit for the maximum size of the metadata cache in the data store format.
  final pulumi.Input<String>? unit;

  /// Sets the value for the maximum size of the metadata cache in the data store format configuration.
  final pulumi.Input<double> value;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize].
  /// [unit] Specifies the unit for the maximum size of the metadata cache in the data store format.
  /// [value] Sets the value for the maximum size of the metadata cache in the data store format configuration.
  DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize({
    this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': ?unit, 'value': value};
  }

  factory DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorBackingStoreFormatMetadataCacheMaxSize(
      unit: (() {
        final guardedValue = map['unit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}
