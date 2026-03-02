// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness {
  /// If true, the builder claims that invocation.environment is complete.
  final pulumi.Input<bool>? environment;
  /// If true, the builder claims that materials is complete.
  final pulumi.Input<bool>? materials;
  /// If true, the builder claims that invocation.parameters is complete.
  final pulumi.Input<bool>? parameters;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness].
  /// [environment] If true, the builder claims that invocation.environment is complete.
  /// [materials] If true, the builder claims that materials is complete.
  /// [parameters] If true, the builder claims that invocation.parameters is complete.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness({
    this.environment,
    this.materials,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'materials': ?materials,
      'parameters': ?parameters,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness(
      environment: map['environment'] == null ? null : (map['environment'] as bool).input(),
      materials: map['materials'] == null ? null : (map['materials'] as bool).input(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as bool).input(),
    );
  }
}

