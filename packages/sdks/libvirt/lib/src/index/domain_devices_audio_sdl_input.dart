// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_sdl_input_settings.dart';

class DomainDevicesAudioSdlInput {
  /// Defines the number of output buffers in the SDL audio configuration.
  final pulumi.Input<double?>? bufferCount;
  final pulumi.Input<double?>? bufferLength;
  final pulumi.Input<String?>? fixedSettings;
  final pulumi.Input<String?>? mixingEngine;
  final pulumi.Input<DomainDevicesAudioSdlInputSettings?>? settings;
  final pulumi.Input<double?>? voices;

  /// Creates a new [DomainDevicesAudioSdlInput].
  /// [bufferCount] Defines the number of output buffers in the SDL audio configuration.
  /// [bufferLength] Optional.
  /// [fixedSettings] Optional.
  /// [mixingEngine] Optional.
  /// [settings] Optional.
  /// [voices] Optional.
  const DomainDevicesAudioSdlInput({
    this.bufferCount,
    this.bufferLength,
    this.fixedSettings,
    this.mixingEngine,
    this.settings,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
      'bufferLength': ?bufferLength,
      'fixedSettings': ?fixedSettings,
      'mixingEngine': ?mixingEngine,
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioSdlInputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioSdlInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSdlInput(
      bufferCount: (() { final guardedValue = map['bufferCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioSdlInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
