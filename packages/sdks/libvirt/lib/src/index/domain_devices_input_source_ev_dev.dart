// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInputSourceEvDev {
  /// Specifies the device file for the event device source.
  final String dev;
  /// Controls whether the input device source should grab input focus.
  final String? grab;
  /// Configures grab toggle settings for the event device source.
  final String? grabToggle;
  /// Sets repeat settings for events from the input device source.
  final String? repeat;

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
      dev: map['dev'] as String,
      grab: map['grab'] == null ? null : map['grab'] as String,
      grabToggle: map['grabToggle'] == null ? null : map['grabToggle'] as String,
      repeat: map['repeat'] == null ? null : map['repeat'] as String,
    );
  }
}

