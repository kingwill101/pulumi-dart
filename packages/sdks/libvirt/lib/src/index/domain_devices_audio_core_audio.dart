// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_core_audio_input.dart';
import 'domain_devices_audio_core_audio_output.dart';

class DomainDevicesAudioCoreAudio {
  /// Configures the output settings for the CoreAudio audio device.
  final pulumi.Input<DomainDevicesAudioCoreAudioInput>? input;
  /// Configures the output settings for the CoreAudio audio device.
  final pulumi.Input<DomainDevicesAudioCoreAudioOutput>? output;

  /// Creates a new [DomainDevicesAudioCoreAudio].
  /// [input] Configures the output settings for the CoreAudio audio device.
  /// [output] Configures the output settings for the CoreAudio audio device.
  const DomainDevicesAudioCoreAudio({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioCoreAudioInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioCoreAudioOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioCoreAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioCoreAudio(
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioCoreAudioInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioCoreAudioOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

