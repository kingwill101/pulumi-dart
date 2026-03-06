// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioSdlOutput {
  /// Defines the number of output buffers in the SDL audio configuration.
  final pulumi.Input<double>? bufferCount;

  /// Creates a new [DomainDevicesAudioSdlOutput].
  /// [bufferCount] Defines the number of output buffers in the SDL audio configuration.
  const DomainDevicesAudioSdlOutput({
    this.bufferCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
    };
  }

  factory DomainDevicesAudioSdlOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSdlOutput(
      bufferCount: (() { final guardedValue = map['bufferCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

