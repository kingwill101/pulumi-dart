// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_spice_input.dart';
import 'domain_devices_audio_spice_output.dart';

class DomainDevicesAudioSpice {
  /// Specifies the output settings for the SPICE audio backend.
  final pulumi.Input<DomainDevicesAudioSpiceInput?>? input;
  /// Specifies the output settings for the SPICE audio backend.
  final pulumi.Input<DomainDevicesAudioSpiceOutput?>? output;

  /// Creates a new [DomainDevicesAudioSpice].
  /// [input] Specifies the output settings for the SPICE audio backend.
  /// [output] Specifies the output settings for the SPICE audio backend.
  const DomainDevicesAudioSpice({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioSpiceInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioSpiceOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioSpice.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSpice(
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioSpiceInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioSpiceOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
