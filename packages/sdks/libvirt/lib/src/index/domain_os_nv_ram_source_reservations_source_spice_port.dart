// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceReservationsSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainOsNvRamSourceReservationsSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainOsNvRamSourceReservationsSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}

