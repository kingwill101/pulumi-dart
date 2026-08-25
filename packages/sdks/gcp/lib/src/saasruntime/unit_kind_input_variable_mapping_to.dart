// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitKindInputVariableMappingTo {
  /// Alias of the dependency that the inputVariable will pass its value to
  final pulumi.Input<String> dependency;
  /// Tells App Lifecycle Manager if this mapping should be used during lookup or not
  final pulumi.Input<bool?>? ignoreForLookup;
  /// Name of the inputVariable on the dependency
  final pulumi.Input<String> inputVariable;

  /// Creates a new [UnitKindInputVariableMappingTo].
  /// [dependency] Alias of the dependency that the inputVariable will pass its value to
  /// [ignoreForLookup] Tells App Lifecycle Manager if this mapping should be used during lookup or not
  /// [inputVariable] Name of the inputVariable on the dependency
  const UnitKindInputVariableMappingTo({
    required this.dependency,
    this.ignoreForLookup,
    required this.inputVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependency': dependency,
      'ignoreForLookup': ?ignoreForLookup,
      'inputVariable': inputVariable,
    };
  }

  factory UnitKindInputVariableMappingTo.fromMap(Map<String, dynamic> map) {
    return UnitKindInputVariableMappingTo(
      dependency: pulumi.Input.fromValue(map['dependency'] as String),
      ignoreForLookup: (() { final guardedValue = map['ignoreForLookup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inputVariable: pulumi.Input.fromValue(map['inputVariable'] as String),
    );
  }
}
