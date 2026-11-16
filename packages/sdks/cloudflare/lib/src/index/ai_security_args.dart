// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ai_security_ai_security_args_doc}
/// The set of arguments for AiSecurity.
/// {@endtemplate}
/// {@macro pulumi_index_ai_security_ai_security_args_doc}
class AiSecurityArgs {
  /// Whether AI Security for Apps is enabled on the zone.
  final pulumi.Input<bool?>? enabled;
  /// Defines the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [AiSecurityArgs].
  /// [enabled] Whether AI Security for Apps is enabled on the zone.
  /// [zoneId] Defines the zone.
  const AiSecurityArgs({
    this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': zoneId,
    };
  }

  factory AiSecurityArgs.fromMap(Map<String, dynamic> map) {
    return AiSecurityArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
