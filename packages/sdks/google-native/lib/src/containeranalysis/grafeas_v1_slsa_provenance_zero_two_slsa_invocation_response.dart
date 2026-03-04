// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_config_source_response.dart';

/// Identifies the event that kicked off the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse {
  final pulumi.Input<GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse>
  configSource;
  final pulumi.Input<Map<String, String>> environment;
  final pulumi.Input<Map<String, String>> parameters;

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
      'configSource':
          pulumi.Input.mapInputValue<
            GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse,
            Map<String, dynamic>
          >(configSource, (value) => value.toMap()),
      'environment': environment,
      'parameters': parameters,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse(
      configSource: pulumi.Input.fromValue(
        GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse.fromMap(
          (map['configSource']! as Map).cast<String, dynamic>(),
        ),
      ),
      environment: pulumi.Input.fromValue(
        (map['environment'] as Map).cast<String, String>(),
      ),
      parameters: pulumi.Input.fromValue(
        (map['parameters'] as Map).cast<String, String>(),
      ),
    );
  }
}
