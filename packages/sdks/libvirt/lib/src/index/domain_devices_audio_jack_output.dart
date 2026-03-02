// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioJackOutput {
  /// Sets the client name for the Jack audio output.
  final pulumi.Input<String>? clientName;
  /// Specifies the connection ports for the Jack audio output.
  final pulumi.Input<String>? connectPorts;
  /// Sets the exact client name for the Jack audio output.
  final pulumi.Input<String>? exactName;
  /// Sets the server name for the Jack audio output.
  final pulumi.Input<String>? serverName;

  /// Creates a new [DomainDevicesAudioJackOutput].
  /// [clientName] Sets the client name for the Jack audio output.
  /// [connectPorts] Specifies the connection ports for the Jack audio output.
  /// [exactName] Sets the exact client name for the Jack audio output.
  /// [serverName] Sets the server name for the Jack audio output.
  DomainDevicesAudioJackOutput({
    this.clientName,
    this.connectPorts,
    this.exactName,
    this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientName': ?clientName,
      'connectPorts': ?connectPorts,
      'exactName': ?exactName,
      'serverName': ?serverName,
    };
  }

  factory DomainDevicesAudioJackOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioJackOutput(
      clientName: map['clientName'] == null ? null : (map['clientName']! as String).input(),
      connectPorts: map['connectPorts'] == null ? null : (map['connectPorts']! as String).input(),
      exactName: map['exactName'] == null ? null : (map['exactName']! as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName']! as String).input(),
    );
  }
}

