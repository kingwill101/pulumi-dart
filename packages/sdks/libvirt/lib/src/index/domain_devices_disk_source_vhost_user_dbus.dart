// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceVhostUserDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesDiskSourceVhostUserDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesDiskSourceVhostUserDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesDiskSourceVhostUserDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}

