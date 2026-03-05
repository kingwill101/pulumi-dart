// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompletenessResponse {
  /// If true, the builder claims that invocation.environment is complete.
  final pulumi.Input<bool> environment;
  /// If true, the builder claims that materials is complete.
  final pulumi.Input<bool> materials;
  /// If true, the builder claims that invocation.parameters is complete.
  final pulumi.Input<bool> parameters;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompletenessResponse].
  /// [environment] If true, the builder claims that invocation.environment is complete.
  /// [materials] If true, the builder claims that materials is complete.
  /// [parameters] If true, the builder claims that invocation.parameters is complete.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompletenessResponse({
    required this.environment,
    required this.materials,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'materials': materials,
      'parameters': parameters,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompletenessResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompletenessResponse(
      environment: pulumi.Input.fromValue(map['environment'] as bool),
      materials: pulumi.Input.fromValue(map['materials'] as bool),
      parameters: pulumi.Input.fromValue(map['parameters'] as bool),
    );
  }
}

