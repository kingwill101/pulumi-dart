// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRedirDevSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesRedirDevSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesRedirDevSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesRedirDevSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}

