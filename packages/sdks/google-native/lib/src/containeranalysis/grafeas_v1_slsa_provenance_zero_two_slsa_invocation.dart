// ignore_for_file: unused_element, unnecessary_cast

import 'grafeas_v1_slsa_provenance_zero_two_slsa_config_source.dart';

/// Identifies the event that kicked off the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation {
  final GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource? configSource;
  final Map<String, String>? environment;
  final Map<String, String>? parameters;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation].
  /// [configSource] Optional.
  /// [environment] Optional.
  /// [parameters] Optional.
  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation({
    this.configSource,
    this.environment,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSource': ?configSource == null ? null : configSource!.toMap(),
      'environment': ?environment,
      'parameters': ?parameters,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(
      configSource: map['configSource'] == null ? null : GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap((map['configSource'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null ? null : (map['environment'] as Map).cast<String, String>(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

