// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_oss_input.dart';
import 'domain_devices_audio_oss_output.dart';

class DomainDevicesAudioOss {
  /// Sets the DSP policy for the OSS audio device.
  final pulumi.Input<double>? dspPolicy;
  /// Configures the exclusivity for the OSS audio device.
  final pulumi.Input<String>? exclusive;
  /// Configures the output settings for the OSS audio device.
  final pulumi.Input<DomainDevicesAudioOssInput>? input;
  /// Configures the output settings for the OSS audio device.
  final pulumi.Input<DomainDevicesAudioOssOutput>? output;
  /// Enables or disables mmap for the OSS audio device.
  final pulumi.Input<String>? tryMMap;

  /// Creates a new [DomainDevicesAudioOss].
  /// [dspPolicy] Sets the DSP policy for the OSS audio device.
  /// [exclusive] Configures the exclusivity for the OSS audio device.
  /// [input] Configures the output settings for the OSS audio device.
  /// [output] Configures the output settings for the OSS audio device.
  /// [tryMMap] Enables or disables mmap for the OSS audio device.
  DomainDevicesAudioOss({
    this.dspPolicy,
    this.exclusive,
    this.input,
    this.output,
    this.tryMMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dspPolicy': ?dspPolicy,
      'exclusive': ?exclusive,
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioOssInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioOssOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'tryMMap': ?tryMMap,
    };
  }

  factory DomainDevicesAudioOss.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioOss(
      dspPolicy: map['dspPolicy'] == null ? null : (map['dspPolicy'] as double).input(),
      exclusive: map['exclusive'] == null ? null : (map['exclusive'] as String).input(),
      input: map['input'] == null ? null : (DomainDevicesAudioOssInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      output: map['output'] == null ? null : (DomainDevicesAudioOssOutput.fromMap((map['output'] as Map).cast<String, dynamic>())).input(),
      tryMMap: map['tryMMap'] == null ? null : (map['tryMMap'] as String).input(),
    );
  }
}

