// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioCoreAudioInput {
  /// Sets the number of output buffers for the CoreAudio audio device.
  final pulumi.Input<double>? bufferCount;

  /// Creates a new [DomainDevicesAudioCoreAudioInput].
  /// [bufferCount] Sets the number of output buffers for the CoreAudio audio device.
  DomainDevicesAudioCoreAudioInput({
    this.bufferCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
    };
  }

  factory DomainDevicesAudioCoreAudioInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioCoreAudioInput(
      bufferCount: map['bufferCount'] == null ? null : (map['bufferCount']! as double).input(),
    );
  }
}

