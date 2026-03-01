// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceReservationsSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

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
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}

