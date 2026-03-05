// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_config_source_response.dart';

/// Identifies the event that kicked off the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocationResponse {
  /// Describes where the config file that kicked off the build came from.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse> configSource;
  /// Any other builder-controlled inputs necessary for correctly evaluating the build.
  final pulumi.Input<Map<String, String>> environment;
  /// Collection of all external inputs that influenced the build on top of invocation.configSource.
  final pulumi.Input<Map<String, String>> parameters;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocationResponse].
  /// [configSource] Describes where the config file that kicked off the build came from.
  /// [environment] Any other builder-controlled inputs necessary for correctly evaluating the build.
  /// [parameters] Collection of all external inputs that influenced the build on top of invocation.configSource.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocationResponse({
    required this.configSource,
    required this.environment,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSource': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse, Map<String, dynamic>>(configSource, (value) => value.toMap()),
      'environment': environment,
      'parameters': parameters,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocationResponse(
      configSource: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSourceResponse.fromMap((map['configSource']! as Map).cast<String, dynamic>())),
      environment: pulumi.Input.fromValue((map['environment'] as Map).cast<String, String>()),
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
    );
  }
}

