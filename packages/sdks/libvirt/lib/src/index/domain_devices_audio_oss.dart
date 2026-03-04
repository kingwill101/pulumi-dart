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
      'input':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesAudioOssInput,
            Map<String, dynamic>
          >(input, (value) => value.toMap()),
      'output':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesAudioOssOutput,
            Map<String, dynamic>
          >(output, (value) => value.toMap()),
      'tryMMap': ?tryMMap,
    };
  }

  factory DomainDevicesAudioOss.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioOss(
      dspPolicy: (() {
        final guardedValue = map['dspPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      exclusive: (() {
        final guardedValue = map['exclusive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesAudioOssInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesAudioOssOutput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tryMMap: (() {
        final guardedValue = map['tryMMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
