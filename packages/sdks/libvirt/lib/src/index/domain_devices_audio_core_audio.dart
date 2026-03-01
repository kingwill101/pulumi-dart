// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_audio_core_audio_input.dart';
import 'domain_devices_audio_core_audio_output.dart';

class DomainDevicesAudioCoreAudio {
  /// Configures the output settings for the CoreAudio audio device.
  final DomainDevicesAudioCoreAudioInput? input;
  /// Configures the output settings for the CoreAudio audio device.
  final DomainDevicesAudioCoreAudioOutput? output;

  /// Creates a new [DomainDevicesAudioCoreAudio].
  /// [input] Configures the output settings for the CoreAudio audio device.
  /// [output] Configures the output settings for the CoreAudio audio device.
  DomainDevicesAudioCoreAudio({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input == null ? null : input!.toMap(),
      'output': ?output == null ? null : output!.toMap(),
    };
  }

  factory DomainDevicesAudioCoreAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioCoreAudio(
      input: map['input'] == null ? null : DomainDevicesAudioCoreAudioInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: map['output'] == null ? null : DomainDevicesAudioCoreAudioOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
    );
  }
}

