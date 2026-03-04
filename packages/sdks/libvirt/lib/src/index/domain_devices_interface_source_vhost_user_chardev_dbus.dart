// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceVhostUserChardevDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final pulumi.Input<String>? channel;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesInterfaceSourceVhostUserChardevDbus({this.channel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'channel': ?channel};
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevDbus.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesInterfaceSourceVhostUserChardevDbus(
      channel: (() {
        final guardedValue = map['channel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
