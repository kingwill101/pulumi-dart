// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_none_input_settings.dart';

class DomainDevicesAudioNoneInput {
  final pulumi.Input<double>? bufferLength;
  final pulumi.Input<String>? fixedSettings;
  final pulumi.Input<String>? mixingEngine;
  final pulumi.Input<DomainDevicesAudioNoneInputSettings>? settings;
  final pulumi.Input<double>? voices;

  /// Creates a new [DomainDevicesAudioNoneInput].
  /// [bufferLength] Optional.
  /// [fixedSettings] Optional.
  /// [mixingEngine] Optional.
  /// [settings] Optional.
  /// [voices] Optional.
  const DomainDevicesAudioNoneInput({
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
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioNoneInputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioNoneInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioNoneInput(
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioNoneInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
