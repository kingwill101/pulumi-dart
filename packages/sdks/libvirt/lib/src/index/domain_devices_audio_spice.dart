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
  DomainDevicesAudioSpice({this.input, this.output});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'input': ?input, 'output': ?output};
  }

  factory DomainDevicesAudioSpice.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSpice(
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
