// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesConsoleSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesConsoleSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesConsoleSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesConsoleSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}

