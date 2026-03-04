// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final pulumi.Input<String> seconds;

  /// Creates a new [DomainOsNvRamSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  DomainOsNvRamSourceTimeout({required this.seconds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'seconds': seconds};
  }

  factory DomainOsNvRamSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceTimeout(
      seconds: pulumi.Input.fromValue(map['seconds'] as String),
    );
  }
}
