// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitConnectorFilter {
  /// Filter connectors by device type.
  /// Available values: "MANAGED", "LICENSED".
  final pulumi.Input<String?>? deviceType;

  /// Creates a new [GetMagicTransitConnectorFilter].
  /// [deviceType] Filter connectors by device type.
  const GetMagicTransitConnectorFilter({
    this.deviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceType': ?deviceType,
    };
  }

  factory GetMagicTransitConnectorFilter.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorFilter(
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
