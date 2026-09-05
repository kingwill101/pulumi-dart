// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AllowedFlexVolume represents a single Flexvolume that is allowed to be used.
class AllowedFlexVolumePatch {
  /// driver is the name of the Flexvolume driver.
  final pulumi.Input<String?>? driver;

  /// Creates a new [AllowedFlexVolumePatch].
  /// [driver] driver is the name of the Flexvolume driver.
  const AllowedFlexVolumePatch({
    this.driver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
    };
  }

  factory AllowedFlexVolumePatch.fromMap(Map<String, dynamic> map) {
    return AllowedFlexVolumePatch(
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
