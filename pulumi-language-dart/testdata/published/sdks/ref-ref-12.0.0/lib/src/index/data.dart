// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inner_data.dart';

class Data {
  final pulumi.Input<List<bool>> boolArray;
  final pulumi.Input<bool> boolean;
  final pulumi.Input<double> float;
  final pulumi.Input<InnerData> innerData;
  final pulumi.Input<List<InnerData>?>? innerDataList;
  final pulumi.Input<int> integer;
  final pulumi.Input<InnerData?>? optionalInner;
  final pulumi.Input<String> string_;
  final pulumi.Input<Map<String, String>> stringMap;

  /// Creates a new [Data].
  /// [boolArray] Required.
  /// [boolean] Required.
  /// [float] Required.
  /// [innerData] Required.
  /// [innerDataList] Optional.
  /// [integer] Required.
  /// [optionalInner] Optional.
  /// [string_] Required.
  /// [stringMap] Required.
  const Data({
    required this.boolArray,
    required this.boolean,
    required this.float,
    required this.innerData,
    this.innerDataList,
    required this.integer,
    this.optionalInner,
    required this.string_,
    required this.stringMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolArray': boolArray,
      'boolean': boolean,
      'float': float,
      'innerData': pulumi.Input.mapInputValue<InnerData, Map<String, dynamic>>(innerData, (value) => value.toMap()),
      'innerDataList': ?pulumi.Input.mapOptionalInputValue<List<InnerData>, List<Map<String, dynamic>>>(innerDataList, (value) => pulumi.Input.encodeList<InnerData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integer': integer,
      'optionalInner': ?pulumi.Input.mapOptionalInputValue<InnerData, Map<String, dynamic>>(optionalInner, (value) => value.toMap()),
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
      innerDataList: (() { final guardedValue = map['innerDataList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InnerData>(guardedValue, (value) => InnerData.fromMap((value as Map).cast<String, dynamic>()))); })(),
      integer: pulumi.Input.fromValue((map['integer'] as num).toInt()),
      optionalInner: (() { final guardedValue = map['optionalInner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InnerData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      string_: pulumi.Input.fromValue(map['string'] as String),
      stringMap: pulumi.Input.fromValue((map['stringMap'] as Map).cast<String, String>()),
    );
  }
}
