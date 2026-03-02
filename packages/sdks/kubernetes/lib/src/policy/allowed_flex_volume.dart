// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AllowedFlexVolume represents a single Flexvolume that is allowed to be used.
class AllowedFlexVolume {
  /// driver is the name of the Flexvolume driver.
  final pulumi.Input<String> driver;

  /// Creates a new [AllowedFlexVolume].
  /// [driver] driver is the name of the Flexvolume driver.
  AllowedFlexVolume({
    required this.driver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': driver,
    };
  }

  factory AllowedFlexVolume.fromMap(Map<String, dynamic> map) {
    return AllowedFlexVolume(
      driver: (map['driver'] as String).input(),
    );
  }
}

