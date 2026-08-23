// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final pulumi.Input<String>? channel;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  const DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDbus(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
