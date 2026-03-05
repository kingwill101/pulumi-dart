// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioOssOutput {
  /// Sets the number of output buffers for the OSS audio device.
  final pulumi.Input<double>? bufferCount;
  /// Sets the device node for the OSS audio output.
  final pulumi.Input<String>? dev;
  /// Configures polling for the OSS audio output.
  final pulumi.Input<String>? tryPoll;

  /// Creates a new [DomainDevicesAudioOssOutput].
  /// [bufferCount] Sets the number of output buffers for the OSS audio device.
  /// [dev] Sets the device node for the OSS audio output.
  /// [tryPoll] Configures polling for the OSS audio output.
  DomainDevicesAudioOssOutput({
    this.bufferCount,
    this.dev,
    this.tryPoll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
      'dev': ?dev,
      'tryPoll': ?tryPoll,
    };
  }

  factory DomainDevicesAudioOssOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioOssOutput(
      bufferCount: (() { final guardedValue = map['bufferCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tryPoll: (() { final guardedValue = map['tryPoll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

