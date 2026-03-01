// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceReservationsSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesDiskBackingStoreSourceReservationsSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}

