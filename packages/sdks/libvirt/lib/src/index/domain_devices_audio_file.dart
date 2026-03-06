// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioFile {
  /// Configures the output settings for the file-based audio device.
  final pulumi.Input<Map<String, dynamic>>? input;
  /// Configures the output settings for the file-based audio device.
  final pulumi.Input<Map<String, dynamic>>? output;
  /// Sets the file path for the file-based audio device.
  final pulumi.Input<String>? path;

  /// Creates a new [DomainDevicesAudioFile].
  /// [input] Configures the output settings for the file-based audio device.
  /// [output] Configures the output settings for the file-based audio device.
  /// [path] Sets the file path for the file-based audio device.
  const DomainDevicesAudioFile({
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
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

