// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesChannelSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesChannelSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesChannelSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}

