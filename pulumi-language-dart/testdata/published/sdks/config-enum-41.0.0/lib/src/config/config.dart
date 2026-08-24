// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/my_enum.dart';

/// Configuration values for the config-enum package.
class ConfigEnumConfig {
  const ConfigEnumConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  MyEnum? get aEnum {
    final raw = _raw('aEnum');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return MyEnum.fromValue(guardedValue as String); })();
  }

  MyEnum requireAEnum() {
    final value = aEnum;
    if (value == null) {
      throw ArgumentError("Missing required config value 'aEnum'.");
    }
    return value;
  }

  bool get aEnumIsSecret => _isSecret('aEnum');

  String? get aString {
    final raw = _raw('aString');
    return raw;
  }

  String requireAString() {
    final value = aString;
    if (value == null) {
      throw ArgumentError("Missing required config value 'aString'.");
    }
    return value;
  }

  bool get aStringIsSecret => _isSecret('aString');

}

const config = ConfigEnumConfig();
