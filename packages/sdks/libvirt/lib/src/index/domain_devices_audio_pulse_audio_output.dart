// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioPulseAudioOutput {
  /// Sets the output latency for the PipeWire audio device.
  final pulumi.Input<double>? latency;
  /// Sets the name for the PipeWire audio output.
  final pulumi.Input<String>? name;
  /// Sets the stream name for the PipeWire audio output.
  final pulumi.Input<String>? streamName;

  /// Creates a new [DomainDevicesAudioPulseAudioOutput].
  /// [latency] Sets the output latency for the PipeWire audio device.
  /// [name] Sets the name for the PipeWire audio output.
  /// [streamName] Sets the stream name for the PipeWire audio output.
  const DomainDevicesAudioPulseAudioOutput({
    this.latency,
    this.name,
    this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latency': ?latency,
      'name': ?name,
      'streamName': ?streamName,
    };
  }

  factory DomainDevicesAudioPulseAudioOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioPulseAudioOutput(
      latency: (() { final guardedValue = map['latency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamName: (() { final guardedValue = map['streamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

