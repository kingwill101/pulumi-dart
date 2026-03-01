// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceVhostUserDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesDiskBackingStoreSourceVhostUserDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}

