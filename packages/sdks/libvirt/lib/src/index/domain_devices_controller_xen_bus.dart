// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesControllerXenBus {
  /// Sets the maximum number of event channels supported by the Xen bus controller device.
  final pulumi.Input<double>? maxEventChannels;
  /// Configures the maximum number of grant frames allowed for the Xen bus controller device.
  final pulumi.Input<double>? maxGrantFrames;

  /// Creates a new [DomainDevicesControllerXenBus].
  /// [maxEventChannels] Sets the maximum number of event channels supported by the Xen bus controller device.
  /// [maxGrantFrames] Configures the maximum number of grant frames allowed for the Xen bus controller device.
  DomainDevicesControllerXenBus({
    this.maxEventChannels,
    this.maxGrantFrames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxEventChannels': ?maxEventChannels,
      'maxGrantFrames': ?maxGrantFrames,
    };
  }

  factory DomainDevicesControllerXenBus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerXenBus(
      maxEventChannels: map['maxEventChannels'] == null ? null : (map['maxEventChannels']! as double).input(),
      maxGrantFrames: map['maxGrantFrames'] == null ? null : (map['maxGrantFrames']! as double).input(),
    );
  }
}

