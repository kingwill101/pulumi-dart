// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesParallelSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesParallelSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesParallelSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesParallelSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}

