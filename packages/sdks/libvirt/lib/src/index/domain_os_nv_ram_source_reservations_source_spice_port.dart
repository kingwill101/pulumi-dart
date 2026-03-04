// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceReservationsSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainOsNvRamSourceReservationsSourceSpicePort({required this.channel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'channel': channel};
  }

  factory DomainOsNvRamSourceReservationsSourceSpicePort.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainOsNvRamSourceReservationsSourceSpicePort(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}
