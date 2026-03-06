// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioCoreAudioOutput {
  /// Sets the number of output buffers for the CoreAudio audio device.
  final pulumi.Input<double>? bufferCount;

  /// Creates a new [DomainDevicesAudioCoreAudioOutput].
  /// [bufferCount] Sets the number of output buffers for the CoreAudio audio device.
  const DomainDevicesAudioCoreAudioOutput({
    this.bufferCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
    };
  }

  factory DomainDevicesAudioCoreAudioOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioCoreAudioOutput(
      bufferCount: (() { final guardedValue = map['bufferCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

