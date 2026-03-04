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
      clientName: (() {
        final guardedValue = map['clientName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectPorts: (() {
        final guardedValue = map['connectPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exactName: (() {
        final guardedValue = map['exactName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverName: (() {
        final guardedValue = map['serverName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
