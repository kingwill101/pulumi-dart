// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioCoreAudioOutput {
  /// Sets the number of output buffers for the CoreAudio audio device.
  final pulumi.Input<double>? bufferCount;

  /// Creates a new [DomainDevicesAudioCoreAudioOutput].
  /// [bufferCount] Sets the number of output buffers for the CoreAudio audio device.
  DomainDevicesAudioCoreAudioOutput({
    this.bufferCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
    };
  }

  factory DomainDevicesAudioCoreAudioOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioCoreAudioOutput(
      bufferCount: map['bufferCount'] == null ? null : (map['bufferCount']! as double).input(),
    );
  }
}

