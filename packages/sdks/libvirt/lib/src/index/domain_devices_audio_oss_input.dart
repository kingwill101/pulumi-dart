// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioOssInput {
  /// Sets the number of output buffers for the OSS audio device.
  final double? bufferCount;
  /// Sets the device node for the OSS audio output.
  final String? dev;
  /// Configures polling for the OSS audio output.
  final String? tryPoll;

  /// Creates a new [DomainDevicesAudioOssInput].
  /// [bufferCount] Sets the number of output buffers for the OSS audio device.
  /// [dev] Sets the device node for the OSS audio output.
  /// [tryPoll] Configures polling for the OSS audio output.
  DomainDevicesAudioOssInput({
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

  factory DomainDevicesAudioOssInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioOssInput(
      bufferCount: map['bufferCount'] == null ? null : map['bufferCount'] as double,
      dev: map['dev'] == null ? null : map['dev'] as String,
      tryPoll: map['tryPoll'] == null ? null : map['tryPoll'] as String,
    );
  }
}

