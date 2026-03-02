// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitKindInputVariableMappingFrom {
  /// Alias of the dependency that the outputVariable will pass its value to
  final pulumi.Input<String> dependency;
  /// Name of the outputVariable on the dependency
  final pulumi.Input<String> outputVariable;

  /// Creates a new [UnitKindInputVariableMappingFrom].
  /// [dependency] Alias of the dependency that the outputVariable will pass its value to
  /// [outputVariable] Name of the outputVariable on the dependency
  UnitKindInputVariableMappingFrom({
    required this.dependency,
    required this.outputVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependency': dependency,
      'outputVariable': outputVariable,
    };
  }

  factory UnitKindInputVariableMappingFrom.fromMap(Map<String, dynamic> map) {
    return UnitKindInputVariableMappingFrom(
      dependency: (map['dependency'] as String).input(),
      outputVariable: (map['outputVariable'] as String).input(),
    );
  }
}

