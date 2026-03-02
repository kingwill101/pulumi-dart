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
  DomainDevicesAudioPulseAudio({
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
      input: map['input'] == null ? null : (DomainDevicesAudioPulseAudioInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      output: map['output'] == null ? null : (DomainDevicesAudioPulseAudioOutput.fromMap((map['output']! as Map).cast<String, dynamic>())).input(),
      serverName: map['serverName'] == null ? null : (map['serverName']! as String).input(),
    );
  }
}

