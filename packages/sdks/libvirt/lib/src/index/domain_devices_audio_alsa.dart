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
  DomainDevicesAudioAlsa({this.input, this.output});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesAudioAlsaInput,
            Map<String, dynamic>
          >(input, (value) => value.toMap()),
      'output':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesAudioAlsaOutput,
            Map<String, dynamic>
          >(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioAlsa.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioAlsa(
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesAudioAlsaInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesAudioAlsaOutput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
