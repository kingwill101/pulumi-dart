// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_pipe_wire_input.dart';
import 'domain_devices_audio_pipe_wire_output.dart';

class DomainDevicesAudioPipeWire {
  /// Configures the output settings for the PipeWire audio device.
  final pulumi.Input<DomainDevicesAudioPipeWireInput>? input;
  /// Configures the output settings for the PipeWire audio device.
  final pulumi.Input<DomainDevicesAudioPipeWireOutput>? output;
  /// Sets the runtime directory for the PipeWire audio system integration.
  final pulumi.Input<String>? runtimeDir;

  /// Creates a new [DomainDevicesAudioPipeWire].
  /// [input] Configures the output settings for the PipeWire audio device.
  /// [output] Configures the output settings for the PipeWire audio device.
  /// [runtimeDir] Sets the runtime directory for the PipeWire audio system integration.
  DomainDevicesAudioPipeWire({
    this.input,
    this.output,
    this.runtimeDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioPipeWireInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioPipeWireOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'runtimeDir': ?runtimeDir,
    };
  }

  factory DomainDevicesAudioPipeWire.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioPipeWire(
      input: map['input'] == null ? null : (DomainDevicesAudioPipeWireInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      output: map['output'] == null ? null : (DomainDevicesAudioPipeWireOutput.fromMap((map['output']! as Map).cast<String, dynamic>())).input(),
      runtimeDir: map['runtimeDir'] == null ? null : (map['runtimeDir']! as String).input(),
    );
  }
}

