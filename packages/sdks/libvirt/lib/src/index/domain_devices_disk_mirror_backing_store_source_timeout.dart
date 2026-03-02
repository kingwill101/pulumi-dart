// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final pulumi.Input<String> seconds;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  DomainDevicesDiskMirrorBackingStoreSourceTimeout({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceTimeout(
      seconds: (map['seconds'] as String).input(),
    );
  }
}

