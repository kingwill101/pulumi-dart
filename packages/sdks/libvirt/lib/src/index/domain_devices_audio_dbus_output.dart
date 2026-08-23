// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_dbus_output_settings.dart';

class DomainDevicesAudioDbusOutput {
  final pulumi.Input<double>? bufferLength;
  final pulumi.Input<String>? fixedSettings;
  final pulumi.Input<String>? mixingEngine;
  final pulumi.Input<DomainDevicesAudioDbusOutputSettings>? settings;
  final pulumi.Input<double>? voices;

  /// Creates a new [DomainDevicesAudioDbusOutput].
  /// [bufferLength] Optional.
  /// [fixedSettings] Optional.
  /// [mixingEngine] Optional.
  /// [settings] Optional.
  /// [voices] Optional.
  const DomainDevicesAudioDbusOutput({
    this.bufferLength,
    this.fixedSettings,
    this.mixingEngine,
    this.settings,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferLength': ?bufferLength,
      'fixedSettings': ?fixedSettings,
      'mixingEngine': ?mixingEngine,
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioDbusOutputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioDbusOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioDbusOutput(
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioDbusOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
