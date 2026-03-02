// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config_access_type.dart';

/// Specifies the login configuration for Runtime
class RuntimeAccessConfig {
  /// The type of access mode this instance.
  final pulumi.Input<RuntimeAccessConfigAccessType>? accessType;
  /// The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.
  final pulumi.Input<String>? runtimeOwner;

  /// Creates a new [RuntimeAccessConfig].
  /// [accessType] The type of access mode this instance.
  /// [runtimeOwner] The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.
  RuntimeAccessConfig({
    this.accessType,
    this.runtimeOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?pulumi.Input.mapOptionalInputValue<RuntimeAccessConfigAccessType, String>(accessType, (value) => value.value),
      'runtimeOwner': ?runtimeOwner,
    };
  }

  factory RuntimeAccessConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeAccessConfig(
      accessType: map['accessType'] == null ? null : (RuntimeAccessConfigAccessType.fromValue(map['accessType'] as String)).input(),
      runtimeOwner: map['runtimeOwner'] == null ? null : (map['runtimeOwner'] as String).input(),
    );
  }
}

