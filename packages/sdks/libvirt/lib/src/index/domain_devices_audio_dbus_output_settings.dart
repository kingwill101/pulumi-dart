// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioDbusOutputSettings {
  /// Private communication channels between host and guest
  final pulumi.Input<double?>? channels;
  final pulumi.Input<String?>? format;
  /// Configures the frequency of timer interrupts for managing clock updates.
  final pulumi.Input<double?>? frequency;

  /// Creates a new [DomainDevicesAudioDbusOutputSettings].
  /// [channels] Private communication channels between host and guest
  /// [format] Optional.
  /// [frequency] Configures the frequency of timer interrupts for managing clock updates.
  const DomainDevicesAudioDbusOutputSettings({
    this.channels,
    this.format,
    this.frequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': ?channels,
      'format': ?format,
      'frequency': ?frequency,
    };
  }

  factory DomainDevicesAudioDbusOutputSettings.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioDbusOutputSettings(
      channels: (() { final guardedValue = map['channels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
