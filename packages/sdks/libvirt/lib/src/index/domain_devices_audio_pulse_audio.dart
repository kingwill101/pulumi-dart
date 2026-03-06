// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_pulse_audio_input.dart';
import 'domain_devices_audio_pulse_audio_output.dart';

class DomainDevicesAudioPulseAudio {
  /// Configures the output settings for the PipeWire audio device.
  final pulumi.Input<DomainDevicesAudioPulseAudioInput>? input;
  /// Configures the output settings for the PipeWire audio device.
  final pulumi.Input<DomainDevicesAudioPulseAudioOutput>? output;
  /// Specifies the server name for the PulseAudio audio backend configuration.
  final pulumi.Input<String>? serverName;

  /// Creates a new [DomainDevicesAudioPulseAudio].
  /// [input] Configures the output settings for the PipeWire audio device.
  /// [output] Configures the output settings for the PipeWire audio device.
  /// [serverName] Specifies the server name for the PulseAudio audio backend configuration.
  const DomainDevicesAudioPulseAudio({
    this.input,
    this.output,
    this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioPulseAudioInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioPulseAudioOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'serverName': ?serverName,
    };
  }

  factory DomainDevicesAudioPulseAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioPulseAudio(
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioPulseAudioInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioPulseAudioOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

