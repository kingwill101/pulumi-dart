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
  const GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness({
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
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      materials: (() { final guardedValue = map['materials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

