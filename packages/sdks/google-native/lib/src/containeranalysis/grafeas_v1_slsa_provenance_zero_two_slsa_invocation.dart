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
      configSource: (() { final guardedValue = map['configSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

