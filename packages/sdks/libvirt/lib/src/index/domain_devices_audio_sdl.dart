// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_sdl_input.dart';
import 'domain_devices_audio_sdl_output.dart';

class DomainDevicesAudioSdl {
  /// Sets the driver for the SDL audio backend configuration.
  final pulumi.Input<String>? driver;
  /// Specifies the output settings for the SDL audio backend.
  final pulumi.Input<DomainDevicesAudioSdlInput>? input;
  /// Specifies the output settings for the SDL audio backend.
  final pulumi.Input<DomainDevicesAudioSdlOutput>? output;

  /// Creates a new [DomainDevicesAudioSdl].
  /// [driver] Sets the driver for the SDL audio backend configuration.
  /// [input] Specifies the output settings for the SDL audio backend.
  /// [output] Specifies the output settings for the SDL audio backend.
  DomainDevicesAudioSdl({
    this.driver,
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioSdlInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioSdlOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioSdl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSdl(
      driver: map['driver'] == null ? null : (map['driver'] as String).input(),
      input: map['input'] == null ? null : (DomainDevicesAudioSdlInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      output: map['output'] == null ? null : (DomainDevicesAudioSdlOutput.fromMap((map['output'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

