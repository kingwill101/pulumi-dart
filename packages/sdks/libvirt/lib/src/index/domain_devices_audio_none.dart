// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_none_input.dart';
import 'domain_devices_audio_none_output.dart';

class DomainDevicesAudioNone {
  /// Configures the output settings for the None audio device.
  final pulumi.Input<DomainDevicesAudioNoneInput?>? input;
  /// Configures the output settings for the None audio device.
  final pulumi.Input<DomainDevicesAudioNoneOutput?>? output;

  /// Creates a new [DomainDevicesAudioNone].
  /// [input] Configures the output settings for the None audio device.
  /// [output] Configures the output settings for the None audio device.
  const DomainDevicesAudioNone({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioNoneInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioNoneOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioNone.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioNone(
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioNoneInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioNoneOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
