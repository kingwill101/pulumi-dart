// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSerialSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesSerialSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesSerialSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesSerialSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}

