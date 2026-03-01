// ignore_for_file: unused_element, unnecessary_cast

import 'grafeas_v1_slsa_provenance_zero_two_slsa_config_source_response.dart';

/// Identifies the event that kicked off the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse {
  final GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse configSource;
  final Map<String, String> environment;
  final Map<String, String> parameters;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse].
  /// [configSource] Required.
  /// [environment] Required.
  /// [parameters] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse({
    required this.configSource,
    required this.environment,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSource': configSource.toMap(),
      'environment': environment,
      'parameters': parameters,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse(
      configSource: GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse.fromMap((map['configSource'] as Map).cast<String, dynamic>()),
      environment: (map['environment'] as Map).cast<String, String>(),
      parameters: (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

