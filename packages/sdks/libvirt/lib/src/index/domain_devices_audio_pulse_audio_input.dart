// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioPulseAudioInput {
  /// Sets the output latency for the PipeWire audio device.
  final pulumi.Input<double>? latency;
  /// Sets the name for the PipeWire audio output.
  final pulumi.Input<String>? name;
  /// Sets the stream name for the PipeWire audio output.
  final pulumi.Input<String>? streamName;

  /// Creates a new [DomainDevicesAudioPulseAudioInput].
  /// [latency] Sets the output latency for the PipeWire audio device.
  /// [name] Sets the name for the PipeWire audio output.
  /// [streamName] Sets the stream name for the PipeWire audio output.
  DomainDevicesAudioPulseAudioInput({
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

  factory DomainDevicesAudioPulseAudioInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioPulseAudioInput(
      latency: map['latency'] == null ? null : (map['latency']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      streamName: map['streamName'] == null ? null : (map['streamName']! as String).input(),
    );
  }
}

