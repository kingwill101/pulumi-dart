// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_core_audio_output_settings.dart';

class DomainDevicesAudioCoreAudioOutput {
  /// Sets the number of output buffers for the CoreAudio audio device.
  final pulumi.Input<double>? bufferCount;
  final pulumi.Input<double>? bufferLength;
  final pulumi.Input<String>? fixedSettings;
  final pulumi.Input<String>? mixingEngine;
  final pulumi.Input<DomainDevicesAudioCoreAudioOutputSettings>? settings;
  final pulumi.Input<double>? voices;

  /// Creates a new [DomainDevicesAudioCoreAudioOutput].
  /// [bufferCount] Sets the number of output buffers for the CoreAudio audio device.
  /// [bufferLength] Optional.
  /// [fixedSettings] Optional.
  /// [mixingEngine] Optional.
  /// [settings] Optional.
  /// [voices] Optional.
  const DomainDevicesAudioCoreAudioOutput({
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
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioCoreAudioOutputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioCoreAudioOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioCoreAudioOutput(
      bufferCount: (() { final guardedValue = map['bufferCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioCoreAudioOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
