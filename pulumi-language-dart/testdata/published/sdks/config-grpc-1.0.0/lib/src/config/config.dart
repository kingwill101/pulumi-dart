// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/tbool1.dart';
import '../index/tbool2.dart';
import '../index/tbool3.dart';
import '../index/tint1.dart';
import '../index/tint2.dart';
import '../index/tint3.dart';
import '../index/tnum1.dart';
import '../index/tnum2.dart';
import '../index/tnum3.dart';
import '../index/tsecret_bool1.dart';
import '../index/tsecret_bool2.dart';
import '../index/tsecret_bool3.dart';
import '../index/tsecret_int1.dart';
import '../index/tsecret_int2.dart';
import '../index/tsecret_int3.dart';
import '../index/tsecret_num1.dart';
import '../index/tsecret_num2.dart';
import '../index/tsecret_num3.dart';
import '../index/tsecret_string1.dart';
import '../index/tsecret_string2.dart';
import '../index/tsecret_string3.dart';
import '../index/tstring1.dart';
import '../index/tstring2.dart';
import '../index/tstring3.dart';

/// Configuration values for the config-grpc package.
class ConfigGrpcConfig {
  const ConfigGrpcConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  bool? get bool1 {
    final raw = _raw('bool1');
    return (raw).toBool();
  }

  bool get bool1IsSecret => _isSecret('bool1');

  bool? get bool2 {
    final raw = _raw('bool2');
    return (raw).toBool();
  }

  bool get bool2IsSecret => _isSecret('bool2');

  bool? get bool3 {
    final raw = _raw('bool3');
    return (raw).toBool();
  }

  bool get bool3IsSecret => _isSecret('bool3');

  int? get int1 {
    final raw = _raw('int1');
    return (raw).toInt();
  }

  bool get int1IsSecret => _isSecret('int1');

  int? get int2 {
    final raw = _raw('int2');
    return (raw).toInt();
  }

  bool get int2IsSecret => _isSecret('int2');

  int? get int3 {
    final raw = _raw('int3');
    return (raw).toInt();
  }

  bool get int3IsSecret => _isSecret('int3');

  List<bool>? get listBool1 {
    final raw = _raw('listBool1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<bool>(); })();
  }

  bool get listBool1IsSecret => _isSecret('listBool1');

  List<bool>? get listBool2 {
    final raw = _raw('listBool2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<bool>(); })();
  }

  bool get listBool2IsSecret => _isSecret('listBool2');

  List<bool>? get listBool3 {
    final raw = _raw('listBool3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<bool>(); })();
  }

  bool get listBool3IsSecret => _isSecret('listBool3');

  List<int>? get listInt1 {
    final raw = _raw('listInt1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<int>(); })();
  }

  bool get listInt1IsSecret => _isSecret('listInt1');

  List<int>? get listInt2 {
    final raw = _raw('listInt2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<int>(); })();
  }

  bool get listInt2IsSecret => _isSecret('listInt2');

  List<int>? get listInt3 {
    final raw = _raw('listInt3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<int>(); })();
  }

  bool get listInt3IsSecret => _isSecret('listInt3');

  List<double>? get listNum1 {
    final raw = _raw('listNum1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<double>(); })();
  }

  bool get listNum1IsSecret => _isSecret('listNum1');

  List<double>? get listNum2 {
    final raw = _raw('listNum2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<double>(); })();
  }

  bool get listNum2IsSecret => _isSecret('listNum2');

  List<double>? get listNum3 {
    final raw = _raw('listNum3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<double>(); })();
  }

  bool get listNum3IsSecret => _isSecret('listNum3');

  List<bool>? get listSecretBool1 {
    final raw = _raw('listSecretBool1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<bool>(); })();
  }

  bool get listSecretBool1IsSecret => _isSecret('listSecretBool1');

  List<bool>? get listSecretBool2 {
    final raw = _raw('listSecretBool2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<bool>(); })();
  }

  bool get listSecretBool2IsSecret => _isSecret('listSecretBool2');

  List<bool>? get listSecretBool3 {
    final raw = _raw('listSecretBool3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<bool>(); })();
  }

  bool get listSecretBool3IsSecret => _isSecret('listSecretBool3');

  List<int>? get listSecretInt1 {
    final raw = _raw('listSecretInt1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<int>(); })();
  }

  bool get listSecretInt1IsSecret => _isSecret('listSecretInt1');

  List<int>? get listSecretInt2 {
    final raw = _raw('listSecretInt2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<int>(); })();
  }

  bool get listSecretInt2IsSecret => _isSecret('listSecretInt2');

  List<int>? get listSecretInt3 {
    final raw = _raw('listSecretInt3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<int>(); })();
  }

  bool get listSecretInt3IsSecret => _isSecret('listSecretInt3');

  List<double>? get listSecretNum1 {
    final raw = _raw('listSecretNum1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<double>(); })();
  }

  bool get listSecretNum1IsSecret => _isSecret('listSecretNum1');

  List<double>? get listSecretNum2 {
    final raw = _raw('listSecretNum2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<double>(); })();
  }

  bool get listSecretNum2IsSecret => _isSecret('listSecretNum2');

  List<double>? get listSecretNum3 {
    final raw = _raw('listSecretNum3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<double>(); })();
  }

  bool get listSecretNum3IsSecret => _isSecret('listSecretNum3');

  List<String>? get listSecretString1 {
    final raw = _raw('listSecretString1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<String>(); })();
  }

  bool get listSecretString1IsSecret => _isSecret('listSecretString1');

  List<String>? get listSecretString2 {
    final raw = _raw('listSecretString2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<String>(); })();
  }

  bool get listSecretString2IsSecret => _isSecret('listSecretString2');

  List<String>? get listSecretString3 {
    final raw = _raw('listSecretString3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<String>(); })();
  }

  bool get listSecretString3IsSecret => _isSecret('listSecretString3');

  List<String>? get listString1 {
    final raw = _raw('listString1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<String>(); })();
  }

  bool get listString1IsSecret => _isSecret('listString1');

  List<String>? get listString2 {
    final raw = _raw('listString2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<String>(); })();
  }

  bool get listString2IsSecret => _isSecret('listString2');

  List<String>? get listString3 {
    final raw = _raw('listString3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<String>(); })();
  }

  bool get listString3IsSecret => _isSecret('listString3');

  Map<String, bool>? get mapBool1 {
    final raw = _raw('mapBool1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, bool>(); })();
  }

  bool get mapBool1IsSecret => _isSecret('mapBool1');

  Map<String, bool>? get mapBool2 {
    final raw = _raw('mapBool2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, bool>(); })();
  }

  bool get mapBool2IsSecret => _isSecret('mapBool2');

  Map<String, bool>? get mapBool3 {
    final raw = _raw('mapBool3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, bool>(); })();
  }

  bool get mapBool3IsSecret => _isSecret('mapBool3');

  Map<String, int>? get mapInt1 {
    final raw = _raw('mapInt1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, int>(); })();
  }

  bool get mapInt1IsSecret => _isSecret('mapInt1');

  Map<String, int>? get mapInt2 {
    final raw = _raw('mapInt2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, int>(); })();
  }

  bool get mapInt2IsSecret => _isSecret('mapInt2');

  Map<String, int>? get mapInt3 {
    final raw = _raw('mapInt3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, int>(); })();
  }

  bool get mapInt3IsSecret => _isSecret('mapInt3');

  Map<String, double>? get mapNum1 {
    final raw = _raw('mapNum1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, double>(); })();
  }

  bool get mapNum1IsSecret => _isSecret('mapNum1');

  Map<String, double>? get mapNum2 {
    final raw = _raw('mapNum2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, double>(); })();
  }

  bool get mapNum2IsSecret => _isSecret('mapNum2');

  Map<String, double>? get mapNum3 {
    final raw = _raw('mapNum3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, double>(); })();
  }

  bool get mapNum3IsSecret => _isSecret('mapNum3');

  Map<String, bool>? get mapSecretBool1 {
    final raw = _raw('mapSecretBool1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, bool>(); })();
  }

  bool get mapSecretBool1IsSecret => _isSecret('mapSecretBool1');

  Map<String, bool>? get mapSecretBool2 {
    final raw = _raw('mapSecretBool2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, bool>(); })();
  }

  bool get mapSecretBool2IsSecret => _isSecret('mapSecretBool2');

  Map<String, bool>? get mapSecretBool3 {
    final raw = _raw('mapSecretBool3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, bool>(); })();
  }

  bool get mapSecretBool3IsSecret => _isSecret('mapSecretBool3');

  Map<String, int>? get mapSecretInt1 {
    final raw = _raw('mapSecretInt1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, int>(); })();
  }

  bool get mapSecretInt1IsSecret => _isSecret('mapSecretInt1');

  Map<String, int>? get mapSecretInt2 {
    final raw = _raw('mapSecretInt2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, int>(); })();
  }

  bool get mapSecretInt2IsSecret => _isSecret('mapSecretInt2');

  Map<String, int>? get mapSecretInt3 {
    final raw = _raw('mapSecretInt3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, int>(); })();
  }

  bool get mapSecretInt3IsSecret => _isSecret('mapSecretInt3');

  Map<String, double>? get mapSecretNum1 {
    final raw = _raw('mapSecretNum1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, double>(); })();
  }

  bool get mapSecretNum1IsSecret => _isSecret('mapSecretNum1');

  Map<String, double>? get mapSecretNum2 {
    final raw = _raw('mapSecretNum2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, double>(); })();
  }

  bool get mapSecretNum2IsSecret => _isSecret('mapSecretNum2');

  Map<String, double>? get mapSecretNum3 {
    final raw = _raw('mapSecretNum3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, double>(); })();
  }

  bool get mapSecretNum3IsSecret => _isSecret('mapSecretNum3');

  Map<String, String>? get mapSecretString1 {
    final raw = _raw('mapSecretString1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, String>(); })();
  }

  bool get mapSecretString1IsSecret => _isSecret('mapSecretString1');

  Map<String, String>? get mapSecretString2 {
    final raw = _raw('mapSecretString2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, String>(); })();
  }

  bool get mapSecretString2IsSecret => _isSecret('mapSecretString2');

  Map<String, String>? get mapSecretString3 {
    final raw = _raw('mapSecretString3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, String>(); })();
  }

  bool get mapSecretString3IsSecret => _isSecret('mapSecretString3');

  Map<String, String>? get mapString1 {
    final raw = _raw('mapString1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, String>(); })();
  }

  bool get mapString1IsSecret => _isSecret('mapString1');

  Map<String, String>? get mapString2 {
    final raw = _raw('mapString2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, String>(); })();
  }

  bool get mapString2IsSecret => _isSecret('mapString2');

  Map<String, String>? get mapString3 {
    final raw = _raw('mapString3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as Map).cast<String, String>(); })();
  }

  bool get mapString3IsSecret => _isSecret('mapString3');

  double? get num1 {
    final raw = _raw('num1');
    return (raw).toDouble();
  }

  bool get num1IsSecret => _isSecret('num1');

  double? get num2 {
    final raw = _raw('num2');
    return (raw).toDouble();
  }

  bool get num2IsSecret => _isSecret('num2');

  double? get num3 {
    final raw = _raw('num3');
    return (raw).toDouble();
  }

  bool get num3IsSecret => _isSecret('num3');

  Tbool1? get objBool1 {
    final raw = _raw('objBool1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tbool1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objBool1IsSecret => _isSecret('objBool1');

  Tbool2? get objBool2 {
    final raw = _raw('objBool2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tbool2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objBool2IsSecret => _isSecret('objBool2');

  Tbool3? get objBool3 {
    final raw = _raw('objBool3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tbool3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objBool3IsSecret => _isSecret('objBool3');

  Tint1? get objInt1 {
    final raw = _raw('objInt1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tint1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objInt1IsSecret => _isSecret('objInt1');

  Tint2? get objInt2 {
    final raw = _raw('objInt2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tint2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objInt2IsSecret => _isSecret('objInt2');

  Tint3? get objInt3 {
    final raw = _raw('objInt3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tint3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objInt3IsSecret => _isSecret('objInt3');

  Tnum1? get objNum1 {
    final raw = _raw('objNum1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tnum1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objNum1IsSecret => _isSecret('objNum1');

  Tnum2? get objNum2 {
    final raw = _raw('objNum2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tnum2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objNum2IsSecret => _isSecret('objNum2');

  Tnum3? get objNum3 {
    final raw = _raw('objNum3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tnum3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objNum3IsSecret => _isSecret('objNum3');

  TsecretBool1? get objSecretBool1 {
    final raw = _raw('objSecretBool1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretBool1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretBool1IsSecret => _isSecret('objSecretBool1');

  TsecretBool2? get objSecretBool2 {
    final raw = _raw('objSecretBool2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretBool2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretBool2IsSecret => _isSecret('objSecretBool2');

  TsecretBool3? get objSecretBool3 {
    final raw = _raw('objSecretBool3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretBool3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretBool3IsSecret => _isSecret('objSecretBool3');

  TsecretInt1? get objSecretInt1 {
    final raw = _raw('objSecretInt1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretInt1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretInt1IsSecret => _isSecret('objSecretInt1');

  TsecretInt2? get objSecretInt2 {
    final raw = _raw('objSecretInt2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretInt2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretInt2IsSecret => _isSecret('objSecretInt2');

  TsecretInt3? get objSecretInt3 {
    final raw = _raw('objSecretInt3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretInt3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretInt3IsSecret => _isSecret('objSecretInt3');

  TsecretNum1? get objSecretNum1 {
    final raw = _raw('objSecretNum1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretNum1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretNum1IsSecret => _isSecret('objSecretNum1');

  TsecretNum2? get objSecretNum2 {
    final raw = _raw('objSecretNum2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretNum2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretNum2IsSecret => _isSecret('objSecretNum2');

  TsecretNum3? get objSecretNum3 {
    final raw = _raw('objSecretNum3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretNum3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretNum3IsSecret => _isSecret('objSecretNum3');

  TsecretString1? get objSecretString1 {
    final raw = _raw('objSecretString1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretString1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretString1IsSecret => _isSecret('objSecretString1');

  TsecretString2? get objSecretString2 {
    final raw = _raw('objSecretString2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretString2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretString2IsSecret => _isSecret('objSecretString2');

  TsecretString3? get objSecretString3 {
    final raw = _raw('objSecretString3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return TsecretString3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objSecretString3IsSecret => _isSecret('objSecretString3');

  Tstring1? get objString1 {
    final raw = _raw('objString1');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tstring1.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objString1IsSecret => _isSecret('objString1');

  Tstring2? get objString2 {
    final raw = _raw('objString2');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tstring2.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objString2IsSecret => _isSecret('objString2');

  Tstring3? get objString3 {
    final raw = _raw('objString3');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return Tstring3.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get objString3IsSecret => _isSecret('objString3');

  bool? get secretBool1 {
    final raw = _raw('secretBool1');
    return (raw).toBool();
  }

  bool get secretBool1IsSecret => _isSecret('secretBool1');

  bool? get secretBool2 {
    final raw = _raw('secretBool2');
    return (raw).toBool();
  }

  bool get secretBool2IsSecret => _isSecret('secretBool2');

  bool? get secretBool3 {
    final raw = _raw('secretBool3');
    return (raw).toBool();
  }

  bool get secretBool3IsSecret => _isSecret('secretBool3');

  int? get secretInt1 {
    final raw = _raw('secretInt1');
    return (raw).toInt();
  }

  bool get secretInt1IsSecret => _isSecret('secretInt1');

  int? get secretInt2 {
    final raw = _raw('secretInt2');
    return (raw).toInt();
  }

  bool get secretInt2IsSecret => _isSecret('secretInt2');

  int? get secretInt3 {
    final raw = _raw('secretInt3');
    return (raw).toInt();
  }

  bool get secretInt3IsSecret => _isSecret('secretInt3');

  double? get secretNum1 {
    final raw = _raw('secretNum1');
    return (raw).toDouble();
  }

  bool get secretNum1IsSecret => _isSecret('secretNum1');

  double? get secretNum2 {
    final raw = _raw('secretNum2');
    return (raw).toDouble();
  }

  bool get secretNum2IsSecret => _isSecret('secretNum2');

  double? get secretNum3 {
    final raw = _raw('secretNum3');
    return (raw).toDouble();
  }

  bool get secretNum3IsSecret => _isSecret('secretNum3');

  String? get secretString1 {
    final raw = _raw('secretString1');
    return raw;
  }

  bool get secretString1IsSecret => _isSecret('secretString1');

  String? get secretString2 {
    final raw = _raw('secretString2');
    return raw;
  }

  bool get secretString2IsSecret => _isSecret('secretString2');

  String? get secretString3 {
    final raw = _raw('secretString3');
    return raw;
  }

  bool get secretString3IsSecret => _isSecret('secretString3');

  String? get string1 {
    final raw = _raw('string1');
    return raw;
  }

  bool get string1IsSecret => _isSecret('string1');

  String? get string2 {
    final raw = _raw('string2');
    return raw;
  }

  bool get string2IsSecret => _isSecret('string2');

  String? get string3 {
    final raw = _raw('string3');
    return raw;
  }

  bool get string3IsSecret => _isSecret('string3');

}

const config = ConfigGrpcConfig();
