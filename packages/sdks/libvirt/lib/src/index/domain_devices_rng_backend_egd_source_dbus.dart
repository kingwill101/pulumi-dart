// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRngBackendEgdSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesRngBackendEgdSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesRngBackendEgdSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesRngBackendEgdSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}

