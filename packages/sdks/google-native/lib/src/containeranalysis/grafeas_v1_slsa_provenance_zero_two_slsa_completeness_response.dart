// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse {
  final pulumi.Input<bool> environment;
  final pulumi.Input<bool> materials;
  final pulumi.Input<bool> parameters;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse].
  /// [environment] Required.
  /// [materials] Required.
  /// [parameters] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse({
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

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse(
      environment: pulumi.Input.fromValue(map['environment'] as bool),
      materials: pulumi.Input.fromValue(map['materials'] as bool),
      parameters: pulumi.Input.fromValue(map['parameters'] as bool),
    );
  }
}
