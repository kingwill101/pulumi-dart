// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final pulumi.Input<String> seconds;

  /// Creates a new [DomainDevicesDiskSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  DomainDevicesDiskSourceTimeout({required this.seconds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'seconds': seconds};
  }

  factory DomainDevicesDiskSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceTimeout(
      seconds: pulumi.Input.fromValue(map['seconds'] as String),
    );
  }
}
