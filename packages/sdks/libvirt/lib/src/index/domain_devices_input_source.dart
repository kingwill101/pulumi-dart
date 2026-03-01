// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_input_source_ev_dev.dart';
import 'domain_devices_input_source_passthrough.dart';

class DomainDevicesInputSource {
  /// Configures an event device as the source for the input device.
  final DomainDevicesInputSourceEvDev? evDev;
  /// Enables passthrough mode for the input device source configuration.
  final DomainDevicesInputSourcePassthrough? passthrough;

  /// Creates a new [DomainDevicesInputSource].
  /// [evDev] Configures an event device as the source for the input device.
  /// [passthrough] Enables passthrough mode for the input device source configuration.
  DomainDevicesInputSource({
    this.evDev,
    this.passthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evDev': ?evDev == null ? null : evDev!.toMap(),
      'passthrough': ?passthrough == null ? null : passthrough!.toMap(),
    };
  }

  factory DomainDevicesInputSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputSource(
      evDev: map['evDev'] == null ? null : DomainDevicesInputSourceEvDev.fromMap((map['evDev'] as Map).cast<String, dynamic>()),
      passthrough: map['passthrough'] == null ? null : DomainDevicesInputSourcePassthrough.fromMap((map['passthrough'] as Map).cast<String, dynamic>()),
    );
  }
}

