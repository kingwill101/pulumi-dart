// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_shield_get_api_shield_args_doc}
/// Arguments for getApiShield.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_get_api_shield_args_doc}
class GetApiShieldArgs {
  /// Ensures that the configuration is written or retrieved in normalized fashion
  final pulumi.Input<bool?>? normalize;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldArgs].
  /// [normalize] Ensures that the configuration is written or retrieved in normalized fashion
  /// [zoneId] Identifier.
  const GetApiShieldArgs({
    this.normalize,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'normalize': ?normalize,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldArgs(
      normalize: (() { final guardedValue = map['normalize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
