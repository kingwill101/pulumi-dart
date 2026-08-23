// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_pulse_audio_input_settings.dart';

class DomainDevicesAudioPulseAudioInput {
  final pulumi.Input<double>? bufferLength;
  final pulumi.Input<String>? fixedSettings;
  /// Sets the output latency for the PipeWire audio device.
  final pulumi.Input<double>? latency;
  final pulumi.Input<String>? mixingEngine;
  /// Sets the name for the PipeWire audio output.
  final pulumi.Input<String>? name;
  final pulumi.Input<DomainDevicesAudioPulseAudioInputSettings>? settings;
  /// Sets the stream name for the PipeWire audio output.
  final pulumi.Input<String>? streamName;
  final pulumi.Input<double>? voices;

  /// Creates a new [DomainDevicesAudioPulseAudioInput].
  /// [bufferLength] Optional.
  /// [fixedSettings] Optional.
  /// [latency] Sets the output latency for the PipeWire audio device.
  /// [mixingEngine] Optional.
  /// [name] Sets the name for the PipeWire audio output.
  /// [settings] Optional.
  /// [streamName] Sets the stream name for the PipeWire audio output.
  /// [voices] Optional.
  const DomainDevicesAudioPulseAudioInput({
    this.bufferLength,
    this.fixedSettings,
    this.latency,
    this.mixingEngine,
    this.name,
    this.settings,
    this.streamName,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferLength': ?bufferLength,
      'fixedSettings': ?fixedSettings,
      'latency': ?latency,
      'mixingEngine': ?mixingEngine,
      'name': ?name,
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioPulseAudioInputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'streamName': ?streamName,
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioPulseAudioInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioPulseAudioInput(
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latency: (() { final guardedValue = map['latency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioPulseAudioInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamName: (() { final guardedValue = map['streamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
