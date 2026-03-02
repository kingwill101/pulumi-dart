// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendExternalSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final pulumi.Input<String>? channel;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesTpmBackendExternalSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesTpmBackendExternalSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceDbus(
      channel: map['channel'] == null ? null : (map['channel']! as String).input(),
    );
  }
}

