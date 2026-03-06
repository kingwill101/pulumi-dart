// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the definition of a first party application of the Test Base package.
class FirstPartyAppDefinitionResponse {
  /// The architecture of a first party application of a Test Base Account.
  final pulumi.Input<String>? architecture;
  /// The channel info of a first party application of a Test Base Account.
  final pulumi.Input<String>? channel;
  /// Specifies how the first party applications should be inter-operated with user's application.
  final pulumi.Input<String>? interopExecutionMode;
  /// The media name of a first party application of a Test Base Account.
  final pulumi.Input<String>? name;
  /// The ring info of a first party application of a Test Base Account.
  final pulumi.Input<String>? ring;

  /// Creates a new [FirstPartyAppDefinitionResponse].
  /// [architecture] The architecture of a first party application of a Test Base Account.
  /// [channel] The channel info of a first party application of a Test Base Account.
  /// [interopExecutionMode] Specifies how the first party applications should be inter-operated with user's application.
  /// [name] The media name of a first party application of a Test Base Account.
  /// [ring] The ring info of a first party application of a Test Base Account.
  const FirstPartyAppDefinitionResponse({
    this.architecture,
    this.channel,
    this.interopExecutionMode,
    this.name,
    this.ring,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'channel': ?channel,
      'interopExecutionMode': ?interopExecutionMode,
      'name': ?name,
      'ring': ?ring,
    };
  }

  factory FirstPartyAppDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return FirstPartyAppDefinitionResponse(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interopExecutionMode: (() { final guardedValue = map['interopExecutionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ring: (() { final guardedValue = map['ring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

