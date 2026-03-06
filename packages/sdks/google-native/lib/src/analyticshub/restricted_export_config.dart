// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Restricted export config, used to configure restricted export on linked dataset.
class RestrictedExportConfig {
  /// Optional. If true, enable restricted export.
  final pulumi.Input<bool>? enabled;
  /// Optional. If true, restrict export of query result derived from restricted linked dataset table.
  final pulumi.Input<bool>? restrictQueryResult;

  /// Creates a new [RestrictedExportConfig].
  /// [enabled] Optional. If true, enable restricted export.
  /// [restrictQueryResult] Optional. If true, restrict export of query result derived from restricted linked dataset table.
  const RestrictedExportConfig({
    this.enabled,
    this.restrictQueryResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'restrictQueryResult': ?restrictQueryResult,
    };
  }

  factory RestrictedExportConfig.fromMap(Map<String, dynamic> map) {
    return RestrictedExportConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restrictQueryResult: (() { final guardedValue = map['restrictQueryResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

