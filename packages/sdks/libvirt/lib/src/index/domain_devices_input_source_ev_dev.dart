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
      dev: (map['dev'] as String).input(),
      grab: map['grab'] == null ? null : (map['grab']! as String).input(),
      grabToggle: map['grabToggle'] == null ? null : (map['grabToggle']! as String).input(),
      repeat: map['repeat'] == null ? null : (map['repeat']! as String).input(),
    );
  }
}

