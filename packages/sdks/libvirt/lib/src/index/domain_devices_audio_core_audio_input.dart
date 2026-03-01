// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioCoreAudioInput {
  /// Sets the number of output buffers for the CoreAudio audio device.
  final double? bufferCount;

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
      bufferCount: map['bufferCount'] == null ? null : map['bufferCount'] as double,
    );
  }
}

