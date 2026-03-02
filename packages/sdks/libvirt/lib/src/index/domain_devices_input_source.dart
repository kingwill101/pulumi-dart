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
  DomainDevicesInputSource({
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
      evDev: map['evDev'] == null ? null : (DomainDevicesInputSourceEvDev.fromMap((map['evDev'] as Map).cast<String, dynamic>())).input(),
      passthrough: map['passthrough'] == null ? null : (DomainDevicesInputSourcePassthrough.fromMap((map['passthrough'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

