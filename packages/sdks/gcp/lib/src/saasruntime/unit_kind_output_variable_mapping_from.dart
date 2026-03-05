// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitKindOutputVariableMappingFrom {
  /// Alias of the dependency that the outputVariable will pass its value to
  final pulumi.Input<String> dependency;
  /// Name of the outputVariable on the dependency
  final pulumi.Input<String> outputVariable;

  /// Creates a new [UnitKindOutputVariableMappingFrom].
  /// [dependency] Alias of the dependency that the outputVariable will pass its value to
  /// [outputVariable] Name of the outputVariable on the dependency
  UnitKindOutputVariableMappingFrom({
    required this.dependency,
    required this.outputVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependency': dependency,
      'outputVariable': outputVariable,
    };
  }

  factory UnitKindOutputVariableMappingFrom.fromMap(Map<String, dynamic> map) {
    return UnitKindOutputVariableMappingFrom(
      dependency: pulumi.Input.fromValue(map['dependency'] as String),
      outputVariable: pulumi.Input.fromValue(map['outputVariable'] as String),
    );
  }
}

