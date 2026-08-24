// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_token_validation_config_get_token_validation_config_args_doc}
/// Arguments for getTokenValidationConfig.
/// {@endtemplate}
/// {@macro pulumi_index_get_token_validation_config_get_token_validation_config_args_doc}
class GetTokenValidationConfigArgs {
  /// UUID.
  final pulumi.Input<String> configId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetTokenValidationConfigArgs].
  /// [configId] UUID.
  /// [zoneId] Identifier.
  const GetTokenValidationConfigArgs({
    required this.configId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'zoneId': ?zoneId,
    };
  }

  factory GetTokenValidationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationConfigArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
