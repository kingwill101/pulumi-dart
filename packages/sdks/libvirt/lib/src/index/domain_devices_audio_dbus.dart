// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioDbus {
  /// Configures the output settings for the D-Bus audio device.
  final Map<String, dynamic>? input;
  /// Configures the output settings for the D-Bus audio device.
  final Map<String, dynamic>? output;

  /// Creates a new [DomainDevicesAudioDbus].
  /// [input] Configures the output settings for the D-Bus audio device.
  /// [output] Configures the output settings for the D-Bus audio device.
  DomainDevicesAudioDbus({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input,
      'output': ?output,
    };
  }

  factory DomainDevicesAudioDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioDbus(
      input: map['input'] == null ? null : (map['input'] as Map).cast<String, dynamic>(),
      output: map['output'] == null ? null : (map['output'] as Map).cast<String, dynamic>(),
    );
  }
}

