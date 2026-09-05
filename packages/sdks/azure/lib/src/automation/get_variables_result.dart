// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_variables_bool.dart';
import 'get_variables_datetime.dart';
import 'get_variables_encrypted.dart';
import 'get_variables_int.dart';
import 'get_variables_null.dart';
import 'get_variables_object.dart';
import 'get_variables_string.dart';

/// Result data returned by getVariables.
class GetVariablesResult {
  final String? automationAccountId;
  /// One or more `variable` blocks as defined below for each boolean variable.
  final List<GetVariablesBool>? bools;
  /// One or more `variable` blocks as defined below for each datetime variable.
  final List<GetVariablesDatetime>? datetimes;
  /// Specifies if the Automation Variable is encrypted.
  final List<GetVariablesEncrypted>? encrypteds;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// One or more `variable` blocks as defined below for each int variable.
  final List<GetVariablesInt>? ints;
  /// One or more `variable` blocks as defined below for each null variable.
  final List<GetVariablesNull>? nulls;
  final List<GetVariablesObject>? objects;
  /// One or more `variable` blocks as defined below for each string variable.
  final List<GetVariablesString>? strings;

  /// Creates a new [GetVariablesResult].
  /// [automationAccountId] Optional.
  /// [bools] One or more `variable` blocks as defined below for each boolean variable.
  /// [datetimes] One or more `variable` blocks as defined below for each datetime variable.
  /// [encrypteds] Specifies if the Automation Variable is encrypted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ints] One or more `variable` blocks as defined below for each int variable.
  /// [nulls] One or more `variable` blocks as defined below for each null variable.
  /// [objects] Optional.
  /// [strings] One or more `variable` blocks as defined below for each string variable.
  const GetVariablesResult({
    this.automationAccountId,
    this.bools,
    this.datetimes,
    this.encrypteds,
    this.id,
    this.ints,
    this.nulls,
    this.objects,
    this.strings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': ?automationAccountId,
      'bools': ?(() { final guardedValue = bools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVariablesBool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'datetimes': ?(() { final guardedValue = datetimes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVariablesDatetime, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'encrypteds': ?(() { final guardedValue = encrypteds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVariablesEncrypted, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ints': ?(() { final guardedValue = ints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVariablesInt, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nulls': ?(() { final guardedValue = nulls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVariablesNull, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'objects': ?(() { final guardedValue = objects; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVariablesObject, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'strings': ?(() { final guardedValue = strings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVariablesString, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVariablesResult.fromMap(Map<String, dynamic> map) {
    return GetVariablesResult(
      automationAccountId: (() { final guardedValue = map['automationAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bools: (() { final guardedValue = map['bools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVariablesBool>(guardedValue, (value) => GetVariablesBool.fromMap((value as Map).cast<String, dynamic>())); })(),
      datetimes: (() { final guardedValue = map['datetimes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVariablesDatetime>(guardedValue, (value) => GetVariablesDatetime.fromMap((value as Map).cast<String, dynamic>())); })(),
      encrypteds: (() { final guardedValue = map['encrypteds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVariablesEncrypted>(guardedValue, (value) => GetVariablesEncrypted.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ints: (() { final guardedValue = map['ints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVariablesInt>(guardedValue, (value) => GetVariablesInt.fromMap((value as Map).cast<String, dynamic>())); })(),
      nulls: (() { final guardedValue = map['nulls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVariablesNull>(guardedValue, (value) => GetVariablesNull.fromMap((value as Map).cast<String, dynamic>())); })(),
      objects: (() { final guardedValue = map['objects']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVariablesObject>(guardedValue, (value) => GetVariablesObject.fromMap((value as Map).cast<String, dynamic>())); })(),
      strings: (() { final guardedValue = map['strings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVariablesString>(guardedValue, (value) => GetVariablesString.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
