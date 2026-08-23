// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_alsa_input_settings.dart';

class DomainDevicesAudioAlsaInput {
  final pulumi.Input<double>? bufferLength;
  /// Sets the device node for the ALSA audio output.
  final pulumi.Input<String>? dev;
  final pulumi.Input<String>? fixedSettings;
  final pulumi.Input<String>? mixingEngine;
  final pulumi.Input<DomainDevicesAudioAlsaInputSettings>? settings;
  final pulumi.Input<double>? voices;

  /// Creates a new [DomainDevicesAudioAlsaInput].
  /// [bufferLength] Optional.
  /// [dev] Sets the device node for the ALSA audio output.
  /// [fixedSettings] Optional.
  /// [mixingEngine] Optional.
  /// [settings] Optional.
  /// [voices] Optional.
  const DomainDevicesAudioAlsaInput({
    this.bufferLength,
    this.dev,
    this.fixedSettings,
    this.mixingEngine,
    this.settings,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferLength': ?bufferLength,
      'dev': ?dev,
      'fixedSettings': ?fixedSettings,
      'mixingEngine': ?mixingEngine,
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioAlsaInputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioAlsaInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioAlsaInput(
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioAlsaInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
