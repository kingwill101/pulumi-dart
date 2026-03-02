// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_jack_input.dart';
import 'domain_devices_audio_jack_output.dart';

class DomainDevicesAudioJack {
  /// Configures the output settings for the Jack audio device.
  final pulumi.Input<DomainDevicesAudioJackInput>? input;
  /// Configures the output settings for the Jack audio device.
  final pulumi.Input<DomainDevicesAudioJackOutput>? output;

  /// Creates a new [DomainDevicesAudioJack].
  /// [input] Configures the output settings for the Jack audio device.
  /// [output] Configures the output settings for the Jack audio device.
  DomainDevicesAudioJack({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioJackInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioJackOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioJack.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioJack(
      input: map['input'] == null ? null : (DomainDevicesAudioJackInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      output: map['output'] == null ? null : (DomainDevicesAudioJackOutput.fromMap((map['output']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

