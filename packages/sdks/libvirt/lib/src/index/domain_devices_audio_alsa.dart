// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_alsa_input.dart';
import 'domain_devices_audio_alsa_output.dart';

class DomainDevicesAudioAlsa {
  /// Configures the output settings for the ALSA audio device.
  final pulumi.Input<DomainDevicesAudioAlsaInput>? input;
  /// Configures the output settings for the ALSA audio device.
  final pulumi.Input<DomainDevicesAudioAlsaOutput>? output;

  /// Creates a new [DomainDevicesAudioAlsa].
  /// [input] Configures the output settings for the ALSA audio device.
  /// [output] Configures the output settings for the ALSA audio device.
  DomainDevicesAudioAlsa({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioAlsaInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioAlsaOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioAlsa.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioAlsa(
      input: map['input'] == null ? null : (DomainDevicesAudioAlsaInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      output: map['output'] == null ? null : (DomainDevicesAudioAlsaOutput.fromMap((map['output'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

