// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioFile {
  /// Configures the output settings for the file-based audio device.
  final Map<String, dynamic>? input;
  /// Configures the output settings for the file-based audio device.
  final Map<String, dynamic>? output;
  /// Sets the file path for the file-based audio device.
  final String? path;

  /// Creates a new [DomainDevicesAudioFile].
  /// [input] Configures the output settings for the file-based audio device.
  /// [output] Configures the output settings for the file-based audio device.
  /// [path] Sets the file path for the file-based audio device.
  DomainDevicesAudioFile({
    this.input,
    this.output,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input,
      'output': ?output,
      'path': ?path,
    };
  }

  factory DomainDevicesAudioFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioFile(
      input: map['input'] == null ? null : (map['input'] as Map).cast<String, dynamic>(),
      output: map['output'] == null ? null : (map['output'] as Map).cast<String, dynamic>(),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

