// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceReservationsSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final pulumi.Input<String>? channel;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainOsNvRamSourceReservationsSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainOsNvRamSourceReservationsSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceDbus(
      channel: map['channel'] == null ? null : (map['channel'] as String).input(),
    );
  }
}

