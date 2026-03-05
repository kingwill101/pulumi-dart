// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioSdlInput {
  /// Defines the number of output buffers in the SDL audio configuration.
  final pulumi.Input<double>? bufferCount;

  /// Creates a new [DomainDevicesAudioSdlInput].
  /// [bufferCount] Defines the number of output buffers in the SDL audio configuration.
  DomainDevicesAudioSdlInput({
    this.bufferCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
    };
  }

  factory DomainDevicesAudioSdlInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSdlInput(
      bufferCount: (() { final guardedValue = map['bufferCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

