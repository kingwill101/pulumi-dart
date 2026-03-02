// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioSpice {
  /// Specifies the output settings for the SPICE audio backend.
  final pulumi.Input<Map<String, dynamic>>? input;
  /// Specifies the output settings for the SPICE audio backend.
  final pulumi.Input<Map<String, dynamic>>? output;

  /// Creates a new [DomainDevicesAudioSpice].
  /// [input] Specifies the output settings for the SPICE audio backend.
  /// [output] Specifies the output settings for the SPICE audio backend.
  DomainDevicesAudioSpice({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input,
      'output': ?output,
    };
  }

  factory DomainDevicesAudioSpice.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSpice(
      input: map['input'] == null ? null : ((map['input']! as Map).cast<String, dynamic>()).input(),
      output: map['output'] == null ? null : ((map['output']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

