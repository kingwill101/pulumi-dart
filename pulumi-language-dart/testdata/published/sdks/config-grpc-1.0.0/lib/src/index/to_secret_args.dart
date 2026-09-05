// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tbool1.dart';
import 'tbool2.dart';
import 'tbool3.dart';
import 'tint1.dart';
import 'tint2.dart';
import 'tint3.dart';
import 'tnum1.dart';
import 'tnum2.dart';
import 'tnum3.dart';
import 'tsecret_bool1.dart';
import 'tsecret_bool2.dart';
import 'tsecret_bool3.dart';
import 'tsecret_int1.dart';
import 'tsecret_int2.dart';
import 'tsecret_int3.dart';
import 'tsecret_num1.dart';
import 'tsecret_num2.dart';
import 'tsecret_num3.dart';
import 'tsecret_string1.dart';
import 'tsecret_string2.dart';
import 'tsecret_string3.dart';
import 'tstring1.dart';
import 'tstring2.dart';
import 'tstring3.dart';

/// {@template pulumi_index_to_secret_args_doc}
/// Arguments for toSecret.
/// {@endtemplate}
/// {@macro pulumi_index_to_secret_args_doc}
class ToSecretArgs {
  final pulumi.Input<bool?>? bool1;
  final pulumi.Input<bool?>? bool2;
  final pulumi.Input<bool?>? bool3;
  final pulumi.Input<int?>? int1;
  final pulumi.Input<int?>? int2;
  final pulumi.Input<int?>? int3;
  final pulumi.Input<List<bool>?>? listBool1;
  final pulumi.Input<List<bool>?>? listBool2;
  final pulumi.Input<List<bool>?>? listBool3;
  final pulumi.Input<List<int>?>? listInt1;
  final pulumi.Input<List<int>?>? listInt2;
  final pulumi.Input<List<int>?>? listInt3;
  final pulumi.Input<List<double>?>? listNum1;
  final pulumi.Input<List<double>?>? listNum2;
  final pulumi.Input<List<double>?>? listNum3;
  final pulumi.Input<List<bool>?>? listSecretBool1;
  final pulumi.Input<List<bool>?>? listSecretBool2;
  final pulumi.Input<List<bool>?>? listSecretBool3;
  final pulumi.Input<List<int>?>? listSecretInt1;
  final pulumi.Input<List<int>?>? listSecretInt2;
  final pulumi.Input<List<int>?>? listSecretInt3;
  final pulumi.Input<List<double>?>? listSecretNum1;
  final pulumi.Input<List<double>?>? listSecretNum2;
  final pulumi.Input<List<double>?>? listSecretNum3;
  final pulumi.Input<List<String>?>? listSecretString1;
  final pulumi.Input<List<String>?>? listSecretString2;
  final pulumi.Input<List<String>?>? listSecretString3;
  final pulumi.Input<List<String>?>? listString1;
  final pulumi.Input<List<String>?>? listString2;
  final pulumi.Input<List<String>?>? listString3;
  final pulumi.Input<Map<String, bool>?>? mapBool1;
  final pulumi.Input<Map<String, bool>?>? mapBool2;
  final pulumi.Input<Map<String, bool>?>? mapBool3;
  final pulumi.Input<Map<String, int>?>? mapInt1;
  final pulumi.Input<Map<String, int>?>? mapInt2;
  final pulumi.Input<Map<String, int>?>? mapInt3;
  final pulumi.Input<Map<String, double>?>? mapNum1;
  final pulumi.Input<Map<String, double>?>? mapNum2;
  final pulumi.Input<Map<String, double>?>? mapNum3;
  final pulumi.Input<Map<String, bool>?>? mapSecretBool1;
  final pulumi.Input<Map<String, bool>?>? mapSecretBool2;
  final pulumi.Input<Map<String, bool>?>? mapSecretBool3;
  final pulumi.Input<Map<String, int>?>? mapSecretInt1;
  final pulumi.Input<Map<String, int>?>? mapSecretInt2;
  final pulumi.Input<Map<String, int>?>? mapSecretInt3;
  final pulumi.Input<Map<String, double>?>? mapSecretNum1;
  final pulumi.Input<Map<String, double>?>? mapSecretNum2;
  final pulumi.Input<Map<String, double>?>? mapSecretNum3;
  final pulumi.Input<Map<String, String>?>? mapSecretString1;
  final pulumi.Input<Map<String, String>?>? mapSecretString2;
  final pulumi.Input<Map<String, String>?>? mapSecretString3;
  final pulumi.Input<Map<String, String>?>? mapString1;
  final pulumi.Input<Map<String, String>?>? mapString2;
  final pulumi.Input<Map<String, String>?>? mapString3;
  final pulumi.Input<double?>? num1;
  final pulumi.Input<double?>? num2;
  final pulumi.Input<double?>? num3;
  final pulumi.Input<Tbool1?>? objBool1;
  final pulumi.Input<Tbool2?>? objBool2;
  final pulumi.Input<Tbool3?>? objBool3;
  final pulumi.Input<Tint1?>? objInt1;
  final pulumi.Input<Tint2?>? objInt2;
  final pulumi.Input<Tint3?>? objInt3;
  final pulumi.Input<Tnum1?>? objNum1;
  final pulumi.Input<Tnum2?>? objNum2;
  final pulumi.Input<Tnum3?>? objNum3;
  final pulumi.Input<TsecretBool1?>? objSecretBool1;
  final pulumi.Input<TsecretBool2?>? objSecretBool2;
  final pulumi.Input<TsecretBool3?>? objSecretBool3;
  final pulumi.Input<TsecretInt1?>? objSecretInt1;
  final pulumi.Input<TsecretInt2?>? objSecretInt2;
  final pulumi.Input<TsecretInt3?>? objSecretInt3;
  final pulumi.Input<TsecretNum1?>? objSecretNum1;
  final pulumi.Input<TsecretNum2?>? objSecretNum2;
  final pulumi.Input<TsecretNum3?>? objSecretNum3;
  final pulumi.Input<TsecretString1?>? objSecretString1;
  final pulumi.Input<TsecretString2?>? objSecretString2;
  final pulumi.Input<TsecretString3?>? objSecretString3;
  final pulumi.Input<Tstring1?>? objString1;
  final pulumi.Input<Tstring2?>? objString2;
  final pulumi.Input<Tstring3?>? objString3;
  final pulumi.Input<bool?>? secretBool1;
  final pulumi.Input<bool?>? secretBool2;
  final pulumi.Input<bool?>? secretBool3;
  final pulumi.Input<int?>? secretInt1;
  final pulumi.Input<int?>? secretInt2;
  final pulumi.Input<int?>? secretInt3;
  final pulumi.Input<double?>? secretNum1;
  final pulumi.Input<double?>? secretNum2;
  final pulumi.Input<double?>? secretNum3;
  final pulumi.Input<String?>? secretString1;
  final pulumi.Input<String?>? secretString2;
  final pulumi.Input<String?>? secretString3;
  final pulumi.Input<String?>? string1;
  final pulumi.Input<String?>? string2;
  final pulumi.Input<String?>? string3;

  /// Creates a new [ToSecretArgs].
  /// [bool1] Optional.
  /// [bool2] Optional.
  /// [bool3] Optional.
  /// [int1] Optional.
  /// [int2] Optional.
  /// [int3] Optional.
  /// [listBool1] Optional.
  /// [listBool2] Optional.
  /// [listBool3] Optional.
  /// [listInt1] Optional.
  /// [listInt2] Optional.
  /// [listInt3] Optional.
  /// [listNum1] Optional.
  /// [listNum2] Optional.
  /// [listNum3] Optional.
  /// [listSecretBool1] Optional.
  /// [listSecretBool2] Optional.
  /// [listSecretBool3] Optional.
  /// [listSecretInt1] Optional.
  /// [listSecretInt2] Optional.
  /// [listSecretInt3] Optional.
  /// [listSecretNum1] Optional.
  /// [listSecretNum2] Optional.
  /// [listSecretNum3] Optional.
  /// [listSecretString1] Optional.
  /// [listSecretString2] Optional.
  /// [listSecretString3] Optional.
  /// [listString1] Optional.
  /// [listString2] Optional.
  /// [listString3] Optional.
  /// [mapBool1] Optional.
  /// [mapBool2] Optional.
  /// [mapBool3] Optional.
  /// [mapInt1] Optional.
  /// [mapInt2] Optional.
  /// [mapInt3] Optional.
  /// [mapNum1] Optional.
  /// [mapNum2] Optional.
  /// [mapNum3] Optional.
  /// [mapSecretBool1] Optional.
  /// [mapSecretBool2] Optional.
  /// [mapSecretBool3] Optional.
  /// [mapSecretInt1] Optional.
  /// [mapSecretInt2] Optional.
  /// [mapSecretInt3] Optional.
  /// [mapSecretNum1] Optional.
  /// [mapSecretNum2] Optional.
  /// [mapSecretNum3] Optional.
  /// [mapSecretString1] Optional.
  /// [mapSecretString2] Optional.
  /// [mapSecretString3] Optional.
  /// [mapString1] Optional.
  /// [mapString2] Optional.
  /// [mapString3] Optional.
  /// [num1] Optional.
  /// [num2] Optional.
  /// [num3] Optional.
  /// [objBool1] Optional.
  /// [objBool2] Optional.
  /// [objBool3] Optional.
  /// [objInt1] Optional.
  /// [objInt2] Optional.
  /// [objInt3] Optional.
  /// [objNum1] Optional.
  /// [objNum2] Optional.
  /// [objNum3] Optional.
  /// [objSecretBool1] Optional.
  /// [objSecretBool2] Optional.
  /// [objSecretBool3] Optional.
  /// [objSecretInt1] Optional.
  /// [objSecretInt2] Optional.
  /// [objSecretInt3] Optional.
  /// [objSecretNum1] Optional.
  /// [objSecretNum2] Optional.
  /// [objSecretNum3] Optional.
  /// [objSecretString1] Optional.
  /// [objSecretString2] Optional.
  /// [objSecretString3] Optional.
  /// [objString1] Optional.
  /// [objString2] Optional.
  /// [objString3] Optional.
  /// [secretBool1] Optional.
  /// [secretBool2] Optional.
  /// [secretBool3] Optional.
  /// [secretInt1] Optional.
  /// [secretInt2] Optional.
  /// [secretInt3] Optional.
  /// [secretNum1] Optional.
  /// [secretNum2] Optional.
  /// [secretNum3] Optional.
  /// [secretString1] Optional.
  /// [secretString2] Optional.
  /// [secretString3] Optional.
  /// [string1] Optional.
  /// [string2] Optional.
  /// [string3] Optional.
  const ToSecretArgs({
    this.bool1,
    this.bool2,
    this.bool3,
    this.int1,
    this.int2,
    this.int3,
    this.listBool1,
    this.listBool2,
    this.listBool3,
    this.listInt1,
    this.listInt2,
    this.listInt3,
    this.listNum1,
    this.listNum2,
    this.listNum3,
    this.listSecretBool1,
    this.listSecretBool2,
    this.listSecretBool3,
    this.listSecretInt1,
    this.listSecretInt2,
    this.listSecretInt3,
    this.listSecretNum1,
    this.listSecretNum2,
    this.listSecretNum3,
    this.listSecretString1,
    this.listSecretString2,
    this.listSecretString3,
    this.listString1,
    this.listString2,
    this.listString3,
    this.mapBool1,
    this.mapBool2,
    this.mapBool3,
    this.mapInt1,
    this.mapInt2,
    this.mapInt3,
    this.mapNum1,
    this.mapNum2,
    this.mapNum3,
    this.mapSecretBool1,
    this.mapSecretBool2,
    this.mapSecretBool3,
    this.mapSecretInt1,
    this.mapSecretInt2,
    this.mapSecretInt3,
    this.mapSecretNum1,
    this.mapSecretNum2,
    this.mapSecretNum3,
    this.mapSecretString1,
    this.mapSecretString2,
    this.mapSecretString3,
    this.mapString1,
    this.mapString2,
    this.mapString3,
    this.num1,
    this.num2,
    this.num3,
    this.objBool1,
    this.objBool2,
    this.objBool3,
    this.objInt1,
    this.objInt2,
    this.objInt3,
    this.objNum1,
    this.objNum2,
    this.objNum3,
    this.objSecretBool1,
    this.objSecretBool2,
    this.objSecretBool3,
    this.objSecretInt1,
    this.objSecretInt2,
    this.objSecretInt3,
    this.objSecretNum1,
    this.objSecretNum2,
    this.objSecretNum3,
    this.objSecretString1,
    this.objSecretString2,
    this.objSecretString3,
    this.objString1,
    this.objString2,
    this.objString3,
    this.secretBool1,
    this.secretBool2,
    this.secretBool3,
    this.secretInt1,
    this.secretInt2,
    this.secretInt3,
    this.secretNum1,
    this.secretNum2,
    this.secretNum3,
    this.secretString1,
    this.secretString2,
    this.secretString3,
    this.string1,
    this.string2,
    this.string3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool1': ?bool1,
      'bool2': ?bool2,
      'bool3': ?bool3,
      'int1': ?int1,
      'int2': ?int2,
      'int3': ?int3,
      'listBool1': ?listBool1,
      'listBool2': ?listBool2,
      'listBool3': ?listBool3,
      'listInt1': ?listInt1,
      'listInt2': ?listInt2,
      'listInt3': ?listInt3,
      'listNum1': ?listNum1,
      'listNum2': ?listNum2,
      'listNum3': ?listNum3,
      'listSecretBool1': ?listSecretBool1,
      'listSecretBool2': ?listSecretBool2,
      'listSecretBool3': ?listSecretBool3,
      'listSecretInt1': ?listSecretInt1,
      'listSecretInt2': ?listSecretInt2,
      'listSecretInt3': ?listSecretInt3,
      'listSecretNum1': ?listSecretNum1,
      'listSecretNum2': ?listSecretNum2,
      'listSecretNum3': ?listSecretNum3,
      'listSecretString1': ?listSecretString1,
      'listSecretString2': ?listSecretString2,
      'listSecretString3': ?listSecretString3,
      'listString1': ?listString1,
      'listString2': ?listString2,
      'listString3': ?listString3,
      'mapBool1': ?mapBool1,
      'mapBool2': ?mapBool2,
      'mapBool3': ?mapBool3,
      'mapInt1': ?mapInt1,
      'mapInt2': ?mapInt2,
      'mapInt3': ?mapInt3,
      'mapNum1': ?mapNum1,
      'mapNum2': ?mapNum2,
      'mapNum3': ?mapNum3,
      'mapSecretBool1': ?mapSecretBool1,
      'mapSecretBool2': ?mapSecretBool2,
      'mapSecretBool3': ?mapSecretBool3,
      'mapSecretInt1': ?mapSecretInt1,
      'mapSecretInt2': ?mapSecretInt2,
      'mapSecretInt3': ?mapSecretInt3,
      'mapSecretNum1': ?mapSecretNum1,
      'mapSecretNum2': ?mapSecretNum2,
      'mapSecretNum3': ?mapSecretNum3,
      'mapSecretString1': ?mapSecretString1,
      'mapSecretString2': ?mapSecretString2,
      'mapSecretString3': ?mapSecretString3,
      'mapString1': ?mapString1,
      'mapString2': ?mapString2,
      'mapString3': ?mapString3,
      'num1': ?num1,
      'num2': ?num2,
      'num3': ?num3,
      'objBool1': ?pulumi.Input.mapOptionalInputValue<Tbool1, Map<String, dynamic>>(objBool1, (value) => value.toMap()),
      'objBool2': ?pulumi.Input.mapOptionalInputValue<Tbool2, Map<String, dynamic>>(objBool2, (value) => value.toMap()),
      'objBool3': ?pulumi.Input.mapOptionalInputValue<Tbool3, Map<String, dynamic>>(objBool3, (value) => value.toMap()),
      'objInt1': ?pulumi.Input.mapOptionalInputValue<Tint1, Map<String, dynamic>>(objInt1, (value) => value.toMap()),
      'objInt2': ?pulumi.Input.mapOptionalInputValue<Tint2, Map<String, dynamic>>(objInt2, (value) => value.toMap()),
      'objInt3': ?pulumi.Input.mapOptionalInputValue<Tint3, Map<String, dynamic>>(objInt3, (value) => value.toMap()),
      'objNum1': ?pulumi.Input.mapOptionalInputValue<Tnum1, Map<String, dynamic>>(objNum1, (value) => value.toMap()),
      'objNum2': ?pulumi.Input.mapOptionalInputValue<Tnum2, Map<String, dynamic>>(objNum2, (value) => value.toMap()),
      'objNum3': ?pulumi.Input.mapOptionalInputValue<Tnum3, Map<String, dynamic>>(objNum3, (value) => value.toMap()),
      'objSecretBool1': ?pulumi.Input.mapOptionalInputValue<TsecretBool1, Map<String, dynamic>>(objSecretBool1, (value) => value.toMap()),
      'objSecretBool2': ?pulumi.Input.mapOptionalInputValue<TsecretBool2, Map<String, dynamic>>(objSecretBool2, (value) => value.toMap()),
      'objSecretBool3': ?pulumi.Input.mapOptionalInputValue<TsecretBool3, Map<String, dynamic>>(objSecretBool3, (value) => value.toMap()),
      'objSecretInt1': ?pulumi.Input.mapOptionalInputValue<TsecretInt1, Map<String, dynamic>>(objSecretInt1, (value) => value.toMap()),
      'objSecretInt2': ?pulumi.Input.mapOptionalInputValue<TsecretInt2, Map<String, dynamic>>(objSecretInt2, (value) => value.toMap()),
      'objSecretInt3': ?pulumi.Input.mapOptionalInputValue<TsecretInt3, Map<String, dynamic>>(objSecretInt3, (value) => value.toMap()),
      'objSecretNum1': ?pulumi.Input.mapOptionalInputValue<TsecretNum1, Map<String, dynamic>>(objSecretNum1, (value) => value.toMap()),
      'objSecretNum2': ?pulumi.Input.mapOptionalInputValue<TsecretNum2, Map<String, dynamic>>(objSecretNum2, (value) => value.toMap()),
      'objSecretNum3': ?pulumi.Input.mapOptionalInputValue<TsecretNum3, Map<String, dynamic>>(objSecretNum3, (value) => value.toMap()),
      'objSecretString1': ?pulumi.Input.mapOptionalInputValue<TsecretString1, Map<String, dynamic>>(objSecretString1, (value) => value.toMap()),
      'objSecretString2': ?pulumi.Input.mapOptionalInputValue<TsecretString2, Map<String, dynamic>>(objSecretString2, (value) => value.toMap()),
      'objSecretString3': ?pulumi.Input.mapOptionalInputValue<TsecretString3, Map<String, dynamic>>(objSecretString3, (value) => value.toMap()),
      'objString1': ?pulumi.Input.mapOptionalInputValue<Tstring1, Map<String, dynamic>>(objString1, (value) => value.toMap()),
      'objString2': ?pulumi.Input.mapOptionalInputValue<Tstring2, Map<String, dynamic>>(objString2, (value) => value.toMap()),
      'objString3': ?pulumi.Input.mapOptionalInputValue<Tstring3, Map<String, dynamic>>(objString3, (value) => value.toMap()),
      'secretBool1': ?secretBool1,
      'secretBool2': ?secretBool2,
      'secretBool3': ?secretBool3,
      'secretInt1': ?secretInt1,
      'secretInt2': ?secretInt2,
      'secretInt3': ?secretInt3,
      'secretNum1': ?secretNum1,
      'secretNum2': ?secretNum2,
      'secretNum3': ?secretNum3,
      'secretString1': ?secretString1,
      'secretString2': ?secretString2,
      'secretString3': ?secretString3,
      'string1': ?string1,
      'string2': ?string2,
      'string3': ?string3,
    };
  }

  factory ToSecretArgs.fromMap(Map<String, dynamic> map) {
    return ToSecretArgs(
      bool1: (() { final guardedValue = map['bool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bool2: (() { final guardedValue = map['bool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bool3: (() { final guardedValue = map['bool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      int1: (() { final guardedValue = map['int1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      int2: (() { final guardedValue = map['int2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      int3: (() { final guardedValue = map['int3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      listBool1: (() { final guardedValue = map['listBool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
      listBool2: (() { final guardedValue = map['listBool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
      listBool3: (() { final guardedValue = map['listBool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
      listInt1: (() { final guardedValue = map['listInt1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      listInt2: (() { final guardedValue = map['listInt2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      listInt3: (() { final guardedValue = map['listInt3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      listNum1: (() { final guardedValue = map['listNum1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      listNum2: (() { final guardedValue = map['listNum2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      listNum3: (() { final guardedValue = map['listNum3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      listSecretBool1: (() { final guardedValue = map['listSecretBool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
      listSecretBool2: (() { final guardedValue = map['listSecretBool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
      listSecretBool3: (() { final guardedValue = map['listSecretBool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
      listSecretInt1: (() { final guardedValue = map['listSecretInt1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      listSecretInt2: (() { final guardedValue = map['listSecretInt2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      listSecretInt3: (() { final guardedValue = map['listSecretInt3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      listSecretNum1: (() { final guardedValue = map['listSecretNum1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      listSecretNum2: (() { final guardedValue = map['listSecretNum2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      listSecretNum3: (() { final guardedValue = map['listSecretNum3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      listSecretString1: (() { final guardedValue = map['listSecretString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listSecretString2: (() { final guardedValue = map['listSecretString2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listSecretString3: (() { final guardedValue = map['listSecretString3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listString1: (() { final guardedValue = map['listString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listString2: (() { final guardedValue = map['listString2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listString3: (() { final guardedValue = map['listString3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mapBool1: (() { final guardedValue = map['mapBool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      mapBool2: (() { final guardedValue = map['mapBool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      mapBool3: (() { final guardedValue = map['mapBool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      mapInt1: (() { final guardedValue = map['mapInt1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      mapInt2: (() { final guardedValue = map['mapInt2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      mapInt3: (() { final guardedValue = map['mapInt3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      mapNum1: (() { final guardedValue = map['mapNum1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      mapNum2: (() { final guardedValue = map['mapNum2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      mapNum3: (() { final guardedValue = map['mapNum3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      mapSecretBool1: (() { final guardedValue = map['mapSecretBool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      mapSecretBool2: (() { final guardedValue = map['mapSecretBool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      mapSecretBool3: (() { final guardedValue = map['mapSecretBool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      mapSecretInt1: (() { final guardedValue = map['mapSecretInt1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      mapSecretInt2: (() { final guardedValue = map['mapSecretInt2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      mapSecretInt3: (() { final guardedValue = map['mapSecretInt3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      mapSecretNum1: (() { final guardedValue = map['mapSecretNum1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      mapSecretNum2: (() { final guardedValue = map['mapSecretNum2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      mapSecretNum3: (() { final guardedValue = map['mapSecretNum3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      mapSecretString1: (() { final guardedValue = map['mapSecretString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mapSecretString2: (() { final guardedValue = map['mapSecretString2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mapSecretString3: (() { final guardedValue = map['mapSecretString3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mapString1: (() { final guardedValue = map['mapString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mapString2: (() { final guardedValue = map['mapString2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mapString3: (() { final guardedValue = map['mapString3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      num1: (() { final guardedValue = map['num1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      num2: (() { final guardedValue = map['num2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      num3: (() { final guardedValue = map['num3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      objBool1: (() { final guardedValue = map['objBool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tbool1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objBool2: (() { final guardedValue = map['objBool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tbool2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objBool3: (() { final guardedValue = map['objBool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tbool3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objInt1: (() { final guardedValue = map['objInt1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tint1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objInt2: (() { final guardedValue = map['objInt2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tint2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objInt3: (() { final guardedValue = map['objInt3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tint3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objNum1: (() { final guardedValue = map['objNum1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tnum1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objNum2: (() { final guardedValue = map['objNum2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tnum2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objNum3: (() { final guardedValue = map['objNum3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tnum3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretBool1: (() { final guardedValue = map['objSecretBool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretBool1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretBool2: (() { final guardedValue = map['objSecretBool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretBool2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretBool3: (() { final guardedValue = map['objSecretBool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretBool3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretInt1: (() { final guardedValue = map['objSecretInt1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretInt1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretInt2: (() { final guardedValue = map['objSecretInt2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretInt2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretInt3: (() { final guardedValue = map['objSecretInt3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretInt3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretNum1: (() { final guardedValue = map['objSecretNum1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretNum1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretNum2: (() { final guardedValue = map['objSecretNum2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretNum2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretNum3: (() { final guardedValue = map['objSecretNum3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretNum3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretString1: (() { final guardedValue = map['objSecretString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretString1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretString2: (() { final guardedValue = map['objSecretString2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretString2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objSecretString3: (() { final guardedValue = map['objSecretString3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TsecretString3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objString1: (() { final guardedValue = map['objString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tstring1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objString2: (() { final guardedValue = map['objString2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tstring2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objString3: (() { final guardedValue = map['objString3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tstring3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretBool1: (() { final guardedValue = map['secretBool1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretBool2: (() { final guardedValue = map['secretBool2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretBool3: (() { final guardedValue = map['secretBool3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretInt1: (() { final guardedValue = map['secretInt1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      secretInt2: (() { final guardedValue = map['secretInt2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      secretInt3: (() { final guardedValue = map['secretInt3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      secretNum1: (() { final guardedValue = map['secretNum1']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      secretNum2: (() { final guardedValue = map['secretNum2']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      secretNum3: (() { final guardedValue = map['secretNum3']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      secretString1: (() { final guardedValue = map['secretString1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretString2: (() { final guardedValue = map['secretString2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretString3: (() { final guardedValue = map['secretString3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      string1: (() { final guardedValue = map['string1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      string2: (() { final guardedValue = map['string2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      string3: (() { final guardedValue = map['string3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
