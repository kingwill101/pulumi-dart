// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LegacyDisallowedCondition {
  /// The disallowed legacy operations.
  final pulumi.Input<List<String>>? disallowedLegacyOperations;
  /// Feature string.
  final pulumi.Input<String>? feature;

  /// Creates a new [LegacyDisallowedCondition].
  /// [disallowedLegacyOperations] The disallowed legacy operations.
  /// [feature] Feature string.
  LegacyDisallowedCondition({
    this.disallowedLegacyOperations,
    this.feature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedLegacyOperations': ?disallowedLegacyOperations,
      'feature': ?feature,
    };
  }

  factory LegacyDisallowedCondition.fromMap(Map<String, dynamic> map) {
    return LegacyDisallowedCondition(
      disallowedLegacyOperations: map['disallowedLegacyOperations'] == null ? null : ((map['disallowedLegacyOperations']! as List).cast<String>()).input(),
      feature: map['feature'] == null ? null : (map['feature']! as String).input(),
    );
  }
}

