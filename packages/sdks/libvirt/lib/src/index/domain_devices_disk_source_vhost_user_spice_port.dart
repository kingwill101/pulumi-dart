// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceVhostUserSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesDiskSourceVhostUserSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesDiskSourceVhostUserSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesDiskSourceVhostUserSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserSpicePort(
      channel: map['channel'] as String,
    );
  }
}

