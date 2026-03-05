// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysMDevSourceAddress {
  /// Configures the UUID for the address of the multimedia subsystem device source.
  final pulumi.Input<String>? uuid;

  /// Creates a new [DomainDevicesHostdevSubsysMDevSourceAddress].
  /// [uuid] Configures the UUID for the address of the multimedia subsystem device source.
  DomainDevicesHostdevSubsysMDevSourceAddress({
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': ?uuid,
    };
  }

  factory DomainDevicesHostdevSubsysMDevSourceAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysMDevSourceAddress(
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

