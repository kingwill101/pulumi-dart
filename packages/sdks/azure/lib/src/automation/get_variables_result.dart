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
  final String automationAccountId;
  /// One or more `variable` blocks as defined below for each boolean variable.
  final List<GetVariablesBool> bools;
  /// One or more `variable` blocks as defined below for each datetime variable.
  final List<GetVariablesDatetime> datetimes;
  /// Specifies if the Automation Variable is encrypted.
  final List<GetVariablesEncrypted> encrypteds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// One or more `variable` blocks as defined below for each int variable.
  final List<GetVariablesInt> ints;
  /// One or more `variable` blocks as defined below for each null variable.
  final List<GetVariablesNull> nulls;
  final List<GetVariablesObject> objects;
  /// One or more `variable` blocks as defined below for each string variable.
  final List<GetVariablesString> strings;

  /// Creates a new [GetVariablesResult].
  /// [automationAccountId] Required.
  /// [bools] One or more `variable` blocks as defined below for each boolean variable.
  /// [datetimes] One or more `variable` blocks as defined below for each datetime variable.
  /// [encrypteds] Specifies if the Automation Variable is encrypted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ints] One or more `variable` blocks as defined below for each int variable.
  /// [nulls] One or more `variable` blocks as defined below for each null variable.
  /// [objects] Required.
  /// [strings] One or more `variable` blocks as defined below for each string variable.
  GetVariablesResult({
    required this.automationAccountId,
    required this.bools,
    required this.datetimes,
    required this.encrypteds,
    required this.id,
    required this.ints,
    required this.nulls,
    required this.objects,
    required this.strings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'bools': pulumi.Input.encodeList<GetVariablesBool, Map<String, dynamic>>(bools, (value) => value.toMap()),
      'datetimes': pulumi.Input.encodeList<GetVariablesDatetime, Map<String, dynamic>>(datetimes, (value) => value.toMap()),
      'encrypteds': pulumi.Input.encodeList<GetVariablesEncrypted, Map<String, dynamic>>(encrypteds, (value) => value.toMap()),
      'id': id,
      'ints': pulumi.Input.encodeList<GetVariablesInt, Map<String, dynamic>>(ints, (value) => value.toMap()),
      'nulls': pulumi.Input.encodeList<GetVariablesNull, Map<String, dynamic>>(nulls, (value) => value.toMap()),
      'objects': pulumi.Input.encodeList<GetVariablesObject, Map<String, dynamic>>(objects, (value) => value.toMap()),
      'strings': pulumi.Input.encodeList<GetVariablesString, Map<String, dynamic>>(strings, (value) => value.toMap()),
    };
  }

  factory GetVariablesResult.fromMap(Map<String, dynamic> map) {
    return GetVariablesResult(
      automationAccountId: map['automationAccountId'] as String,
      bools: pulumi.Input.decodeList<GetVariablesBool>(map['bools']!, (value) => GetVariablesBool.fromMap((value as Map).cast<String, dynamic>())),
      datetimes: pulumi.Input.decodeList<GetVariablesDatetime>(map['datetimes']!, (value) => GetVariablesDatetime.fromMap((value as Map).cast<String, dynamic>())),
      encrypteds: pulumi.Input.decodeList<GetVariablesEncrypted>(map['encrypteds']!, (value) => GetVariablesEncrypted.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ints: pulumi.Input.decodeList<GetVariablesInt>(map['ints']!, (value) => GetVariablesInt.fromMap((value as Map).cast<String, dynamic>())),
      nulls: pulumi.Input.decodeList<GetVariablesNull>(map['nulls']!, (value) => GetVariablesNull.fromMap((value as Map).cast<String, dynamic>())),
      objects: pulumi.Input.decodeList<GetVariablesObject>(map['objects']!, (value) => GetVariablesObject.fromMap((value as Map).cast<String, dynamic>())),
      strings: pulumi.Input.decodeList<GetVariablesString>(map['strings']!, (value) => GetVariablesString.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

