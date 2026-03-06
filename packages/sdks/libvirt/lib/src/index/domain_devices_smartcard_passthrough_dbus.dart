// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSmartcardPassthroughDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final pulumi.Input<String>? channel;

  /// Creates a new [DomainDevicesSmartcardPassthroughDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  const DomainDevicesSmartcardPassthroughDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesSmartcardPassthroughDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughDbus(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

