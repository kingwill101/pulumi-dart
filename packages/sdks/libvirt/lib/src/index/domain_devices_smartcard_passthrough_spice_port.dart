// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSmartcardPassthroughSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesSmartcardPassthroughSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesSmartcardPassthroughSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesSmartcardPassthroughSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughSpicePort(
      channel: map['channel'] as String,
    );
  }
}

