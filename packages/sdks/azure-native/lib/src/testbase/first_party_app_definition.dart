// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the definition of a first party application of the Test Base package.
class FirstPartyAppDefinition {
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

  /// Creates a new [FirstPartyAppDefinition].
  /// [architecture] The architecture of a first party application of a Test Base Account.
  /// [channel] The channel info of a first party application of a Test Base Account.
  /// [interopExecutionMode] Specifies how the first party applications should be inter-operated with user's application.
  /// [name] The media name of a first party application of a Test Base Account.
  /// [ring] The ring info of a first party application of a Test Base Account.
  FirstPartyAppDefinition({
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

  factory FirstPartyAppDefinition.fromMap(Map<String, dynamic> map) {
    return FirstPartyAppDefinition(
      architecture: map['architecture'] == null ? null : (map['architecture'] as String).input(),
      channel: map['channel'] == null ? null : (map['channel'] as String).input(),
      interopExecutionMode: map['interopExecutionMode'] == null ? null : (map['interopExecutionMode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ring: map['ring'] == null ? null : (map['ring'] as String).input(),
    );
  }
}

