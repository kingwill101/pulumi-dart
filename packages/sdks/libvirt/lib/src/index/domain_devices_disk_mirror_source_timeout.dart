// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final pulumi.Input<String> seconds;

  /// Creates a new [DomainDevicesDiskMirrorSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  const DomainDevicesDiskMirrorSourceTimeout({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory DomainDevicesDiskMirrorSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceTimeout(
      seconds: pulumi.Input.fromValue(map['seconds'] as String),
    );
  }
}

