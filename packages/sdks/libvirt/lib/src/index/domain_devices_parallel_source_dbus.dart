// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesParallelSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesParallelSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesParallelSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesParallelSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}

