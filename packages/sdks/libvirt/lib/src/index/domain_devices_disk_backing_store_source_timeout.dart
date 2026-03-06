// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final pulumi.Input<String> seconds;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  const DomainDevicesDiskBackingStoreSourceTimeout({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceTimeout(
      seconds: pulumi.Input.fromValue(map['seconds'] as String),
    );
  }
}

