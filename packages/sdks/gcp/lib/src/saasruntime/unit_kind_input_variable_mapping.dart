// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_kind_input_variable_mapping_from.dart';
import 'unit_kind_input_variable_mapping_to.dart';

class UnitKindInputVariableMapping {
  /// Output variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final pulumi.Input<UnitKindInputVariableMappingFrom>? from;
  /// Input variables whose values will be passed on to dependencies
  /// Structure is documented below.
  final pulumi.Input<UnitKindInputVariableMappingTo>? to;
  /// name of the variable
  final pulumi.Input<String> variable;

  /// Creates a new [UnitKindInputVariableMapping].
  /// [from] Output variables whose values will be passed on to dependencies
  /// [to] Input variables whose values will be passed on to dependencies
  /// [variable] name of the variable
  UnitKindInputVariableMapping({
    this.from,
    this.to,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?pulumi.Input.mapOptionalInputValue<UnitKindInputVariableMappingFrom, Map<String, dynamic>>(from, (value) => value.toMap()),
      'to': ?pulumi.Input.mapOptionalInputValue<UnitKindInputVariableMappingTo, Map<String, dynamic>>(to, (value) => value.toMap()),
      'variable': variable,
    };
  }

  factory UnitKindInputVariableMapping.fromMap(Map<String, dynamic> map) {
    return UnitKindInputVariableMapping(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitKindInputVariableMappingFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitKindInputVariableMappingTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variable: pulumi.Input.fromValue(map['variable'] as String),
    );
  }
}

