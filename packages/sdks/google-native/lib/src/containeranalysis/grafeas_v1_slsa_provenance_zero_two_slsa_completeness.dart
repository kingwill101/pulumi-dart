// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness {
  final pulumi.Input<bool>? environment;
  final pulumi.Input<bool>? materials;
  final pulumi.Input<bool>? parameters;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness].
  /// [environment] Optional.
  /// [materials] Optional.
  /// [parameters] Optional.
  GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness({
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

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(
      environment: map['environment'] == null ? null : (map['environment']! as bool).input(),
      materials: map['materials'] == null ? null : (map['materials']! as bool).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as bool).input(),
    );
  }
}

