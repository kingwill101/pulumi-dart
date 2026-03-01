// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_audio_alsa_input.dart';
import 'domain_devices_audio_alsa_output.dart';

class DomainDevicesAudioAlsa {
  /// Configures the output settings for the ALSA audio device.
  final DomainDevicesAudioAlsaInput? input;
  /// Configures the output settings for the ALSA audio device.
  final DomainDevicesAudioAlsaOutput? output;

  /// Creates a new [DomainDevicesAudioAlsa].
  /// [input] Configures the output settings for the ALSA audio device.
  /// [output] Configures the output settings for the ALSA audio device.
  DomainDevicesAudioAlsa({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input == null ? null : input!.toMap(),
      'output': ?output == null ? null : output!.toMap(),
    };
  }

  factory DomainDevicesAudioAlsa.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioAlsa(
      input: map['input'] == null ? null : DomainDevicesAudioAlsaInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: map['output'] == null ? null : DomainDevicesAudioAlsaOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
    );
  }
}

