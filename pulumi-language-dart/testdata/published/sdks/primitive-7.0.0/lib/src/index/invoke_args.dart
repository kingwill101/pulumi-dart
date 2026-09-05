// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_invoke_args_doc}
/// Arguments for invoke.
/// {@endtemplate}
/// {@macro pulumi_index_invoke_args_doc}
class InvokeArgs {
  final pulumi.Input<bool> boolean;
  final pulumi.Input<Map<String, bool>> booleanMap;
  final pulumi.Input<double> float;
  final pulumi.Input<int> integer;
  final pulumi.Input<List<double>> numberArray;
  final pulumi.Input<String> string_;

  /// Creates a new [InvokeArgs].
  /// [boolean] Required.
  /// [booleanMap] Required.
  /// [float] Required.
  /// [integer] Required.
  /// [numberArray] Required.
  /// [string_] Required.
  const InvokeArgs({
    required this.boolean,
    required this.booleanMap,
    required this.float,
    required this.integer,
    required this.numberArray,
    required this.string_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolean': boolean,
      'booleanMap': booleanMap,
      'float': float,
      'integer': integer,
      'numberArray': numberArray,
      'string': string_,
    };
  }

  factory InvokeArgs.fromMap(Map<String, dynamic> map) {
    return InvokeArgs(
      boolean: pulumi.Input.fromValue(map['boolean'] as bool),
      booleanMap: pulumi.Input.fromValue((map['booleanMap'] as Map).cast<String, bool>()),
      float: pulumi.Input.fromValue((map['float'] as num).toDouble()),
      integer: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['integer'])),
      numberArray: pulumi.Input.fromValue((map['numberArray'] as List).cast<double>()),
      string_: pulumi.Input.fromValue(map['string'] as String),
    );
  }
}
