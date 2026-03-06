// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_input_source_ev_dev.dart';
import 'domain_devices_input_source_passthrough.dart';

class DomainDevicesInputSource {
  /// Configures an event device as the source for the input device.
  final pulumi.Input<DomainDevicesInputSourceEvDev>? evDev;
  /// Enables passthrough mode for the input device source configuration.
  final pulumi.Input<DomainDevicesInputSourcePassthrough>? passthrough;

  /// Creates a new [DomainDevicesInputSource].
  /// [evDev] Configures an event device as the source for the input device.
  /// [passthrough] Enables passthrough mode for the input device source configuration.
  const DomainDevicesInputSource({
    this.evDev,
    this.passthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evDev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInputSourceEvDev, Map<String, dynamic>>(evDev, (value) => value.toMap()),
      'passthrough': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInputSourcePassthrough, Map<String, dynamic>>(passthrough, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInputSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputSource(
      evDev: (() { final guardedValue = map['evDev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInputSourceEvDev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passthrough: (() { final guardedValue = map['passthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInputSourcePassthrough.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

