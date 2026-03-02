// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRedirDevSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final pulumi.Input<String>? channel;

  /// Creates a new [DomainDevicesRedirDevSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesRedirDevSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesRedirDevSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceDbus(
      channel: map['channel'] == null ? null : (map['channel'] as String).input(),
    );
  }
}

