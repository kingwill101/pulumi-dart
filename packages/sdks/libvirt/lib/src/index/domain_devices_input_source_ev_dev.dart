// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInputSourceEvDev {
  /// Specifies the device file for the event device source.
  final pulumi.Input<String> dev;
  /// Controls whether the input device source should grab input focus.
  final pulumi.Input<String>? grab;
  /// Configures grab toggle settings for the event device source.
  final pulumi.Input<String>? grabToggle;
  /// Sets repeat settings for events from the input device source.
  final pulumi.Input<String>? repeat;

  /// Creates a new [DomainDevicesInputSourceEvDev].
  /// [dev] Specifies the device file for the event device source.
  /// [grab] Controls whether the input device source should grab input focus.
  /// [grabToggle] Configures grab toggle settings for the event device source.
  /// [repeat] Sets repeat settings for events from the input device source.
  DomainDevicesInputSourceEvDev({
    required this.dev,
    this.grab,
    this.grabToggle,
    this.repeat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
      'grab': ?grab,
      'grabToggle': ?grabToggle,
      'repeat': ?repeat,
    };
  }

  factory DomainDevicesInputSourceEvDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputSourceEvDev(
      dev: pulumi.Input.fromValue(map['dev'] as String),
      grab: (() { final guardedValue = map['grab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grabToggle: (() { final guardedValue = map['grabToggle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeat: (() { final guardedValue = map['repeat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

