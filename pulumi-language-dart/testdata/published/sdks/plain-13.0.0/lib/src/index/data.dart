// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inner_data.dart';

class Data {
  final pulumi.Input<List<bool>> boolArray;
  final pulumi.Input<bool> boolean;
  final pulumi.Input<double> float;
  final pulumi.Input<InnerData> innerData;
  final pulumi.Input<int> integer;
  final pulumi.Input<String> string_;
  final pulumi.Input<Map<String, String>> stringMap;

  /// Creates a new [Data].
  /// [boolArray] Required.
  /// [boolean] Required.
  /// [float] Required.
  /// [innerData] Required.
  /// [integer] Required.
  /// [string_] Required.
  /// [stringMap] Required.
  const Data({
    required this.boolArray,
    required this.boolean,
    required this.float,
    required this.innerData,
    required this.integer,
    required this.string_,
    required this.stringMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolArray': boolArray,
      'boolean': boolean,
      'float': float,
      'innerData': pulumi.Input.mapInputValue<InnerData, Map<String, dynamic>>(innerData, (value) => value.toMap()),
      'integer': integer,
      'string': string_,
      'stringMap': stringMap,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      boolArray: pulumi.Input.fromValue((map['boolArray'] as List).cast<bool>()),
      boolean: pulumi.Input.fromValue(map['boolean'] as bool),
      float: pulumi.Input.fromValue((map['float'] as num).toDouble()),
      innerData: pulumi.Input.fromValue(InnerData.fromMap((map['innerData']! as Map).cast<String, dynamic>())),
      integer: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['integer'])),
      string_: pulumi.Input.fromValue(map['string'] as String),
      stringMap: pulumi.Input.fromValue((map['stringMap'] as Map).cast<String, String>()),
    );
  }
}
