// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceReservationsSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final pulumi.Input<String> channel;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesDiskBackingStoreSourceReservationsSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'channel': channel};
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceSpicePort.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceSpicePort(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}
