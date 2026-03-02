// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_config_source.dart';

/// Identifies the event that kicked off the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation {
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource>? configSource;
  final pulumi.Input<Map<String, String>>? environment;
  final pulumi.Input<Map<String, String>>? parameters;

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
      'configSource': ?pulumi.Input.mapOptionalInputValue<GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource, Map<String, dynamic>>(configSource, (value) => value.toMap()),
      'environment': ?environment,
      'parameters': ?parameters,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(
      configSource: map['configSource'] == null ? null : (GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap((map['configSource']! as Map).cast<String, dynamic>())).input(),
      environment: map['environment'] == null ? null : ((map['environment']! as Map).cast<String, String>()).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

