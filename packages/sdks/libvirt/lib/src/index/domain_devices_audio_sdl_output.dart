// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioSdlOutput {
  /// Defines the number of output buffers in the SDL audio configuration.
  final double? bufferCount;

  /// Creates a new [DomainDevicesAudioSdlOutput].
  /// [bufferCount] Defines the number of output buffers in the SDL audio configuration.
  DomainDevicesAudioSdlOutput({
    this.bufferCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
    };
  }

  factory DomainDevicesAudioSdlOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSdlOutput(
      bufferCount: map['bufferCount'] == null ? null : map['bufferCount'] as double,
    );
  }
}

