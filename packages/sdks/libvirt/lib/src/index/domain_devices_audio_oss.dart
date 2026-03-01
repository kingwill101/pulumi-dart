// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_audio_oss_input.dart';
import 'domain_devices_audio_oss_output.dart';

class DomainDevicesAudioOss {
  /// Sets the DSP policy for the OSS audio device.
  final double? dspPolicy;
  /// Configures the exclusivity for the OSS audio device.
  final String? exclusive;
  /// Configures the output settings for the OSS audio device.
  final DomainDevicesAudioOssInput? input;
  /// Configures the output settings for the OSS audio device.
  final DomainDevicesAudioOssOutput? output;
  /// Enables or disables mmap for the OSS audio device.
  final String? tryMMap;

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
      'input': ?input == null ? null : input!.toMap(),
      'output': ?output == null ? null : output!.toMap(),
      'tryMMap': ?tryMMap,
    };
  }

  factory DomainDevicesAudioOss.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioOss(
      dspPolicy: map['dspPolicy'] == null ? null : map['dspPolicy'] as double,
      exclusive: map['exclusive'] == null ? null : map['exclusive'] as String,
      input: map['input'] == null ? null : DomainDevicesAudioOssInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: map['output'] == null ? null : DomainDevicesAudioOssOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
      tryMMap: map['tryMMap'] == null ? null : map['tryMMap'] as String,
    );
  }
}

